class UserPreviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :location, :first_name,
    :last_name, :profile_image_url

  def profile_image_url
    object.processed_profile_image_url
  end

end
