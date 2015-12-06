class RouteSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :full_description,
    :image_url, :rating, :user_id, :created_at,
    :updated_at
end
