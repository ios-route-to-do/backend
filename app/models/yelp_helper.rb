require 'yelp'

class YelpHelper

  def initialize
    @client = Yelp::Client.new(
      consumer_key: 'dV6-zlhDffKiuxOr_PNw3A',
      consumer_secret: 'mkCwOmihq4dlQ4MOZY_9U5bh1OE',
      token: '4YoXM7-f0FSZIWDl0dMjiTmLrxVYUq03',
      token_secret: 'yjAOS-PATgE24FgIWMm0ypl_HXg'
    )
  end

  def search(terms, language: nil, location: nil, latitude: nil, longitude: nil)
    params = { term: terms }
    locale = language.present? ? { lang: language } : {}

    if latitude.present? && longitude.present?
      coordinates = {latitude: latitude, longitude: longitude}
      @client.search_by_coordinates(coordinates, params, locale)
    elsif location.present?
      @client.search(location, params, locale)
    end
  end

end
