class Place < ActiveRecord::Base
  has_many :route_places

  def self.search(params)
    terms = params.delete(:query)
    raise 'query must be present' unless terms.present?

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
      if business.location && business.location.coordinate
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

end
