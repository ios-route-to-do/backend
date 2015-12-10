class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :full_description, :location,
    :address, :image_url, :lat, :lng, :created_at, :updated_at
end
