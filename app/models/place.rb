class Place < ActiveRecord::Base
  has_many :route_places

  def self.search(params)
    terms = params.delete(:query)
    raise 'query must be present' unless terms.present?

    if /(awesomeness)|(working)/im =~ terms
      return fake_places
    end

    helper = YelpHelper.new
    parameters = params.slice(:latitude, :longitude, :language, :location).symbolize_keys

    places = helper.search(terms, **parameters)
    if places.present?
      transform_yelp_places(places)
    else
      []
    end
  end

  private
  def self.transform_yelp_places(places)
    response = {
      region: {
        center: {
          latitude: places.region.center.latitude,
          longitude: places.region.center.longitude
        },
        span: {
          latitude_delta: places.region.span.latitude_delta,
          longitude_delta: places.region.span.longitude_delta
        }
      },
      places: []
    }

    places.businesses.each.map do |business|
      if business.location && business.location.coordinate && business.image_url
        response[:places] << {
          name: business.name,
          full_description: business.snippet_text,
          geo_location: nil,
          location: business.location.city,
          address: business.location.display_address.join(', '),
          image_url: business.image_url.gsub(/ms\.(.+)$/, 'l.\1'),
          coordinates: {
            latitude: business.location.coordinate.latitude,
            longitude: business.location.coordinate.longitude
          }
        }
      end
    end

    response
  end

  def self.fake_places
    {
      region: {
        center: {
          latitude: 37.424807,
          longitude: -122.136327
        },
        span: {
          latitude_delta: 0.002,
          longitude_delta: 0.002
        }
      },
      places: [
        {
          name: 'The Garden',
          full_description: 'asdas',
          geo_location: nil,
          location: 'Palo Alto',
          address: '12pm Sunny Lunch Ave, Palo Alto, CA',
          image_url: 'https://s3-us-west-1.amazonaws.com/jopp/place1.jpg',
          coordinates: {
            latitude: 37.424946,
            longitude: -122.135997
          }
        },
        {
          name: 'The Lounge',
          full_description: 'asdas',
          geo_location: nil,
          location: 'Palo Alto',
          address: '2pm Sleepy Couch, Palo Alto, CA',
          image_url: 'https://s3-us-west-1.amazonaws.com/jopp/place2.jpg',
          coordinates: {
            latitude: 37.425126,
            longitude: -122.136373
          }
        },
        {
          name: 'Portage',
          full_description: 'asdas',
          geo_location: nil,
          location: 'Palo Alto',
          address: '10pm Hungry Town Hall, Palo Alto, CA',
          image_url: 'https://s3-us-west-1.amazonaws.com/jopp/place3.jpg',
          coordinates: {
            latitude: 37.424163,
            longitude: -122.136777
          }
        }
      ]
    }
  end

end
