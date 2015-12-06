class User < ActiveRecord::Base
  has_many :routes
  has_many :outings
  has_many :outing_routes, through: :outings, source: :route
  has_many :favorites
  has_many :favorite_routes, through: :favorites, source: :route

  def processed_profile_image_url
    profile_image_url || Gravatar.new(email || '').image_url
  end
end
