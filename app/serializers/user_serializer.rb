class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :location, :first_name,
    :last_name, :profile_image_url, :created_at,
    :updated_at

  has_many :routes
  has_many :favorites
  has_many :outings

  def profile_image_url
    object.processed_profile_image_url
  end

  def favorites
    object.favorite_routes
  end

  def outings
    object.outing_routes
  end

end
