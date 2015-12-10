class RouteSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :full_description,
    :image_url, :rating, :user_id, :outings_count, :created_at,
    :updated_at, :favorite

  has_one :user, serializer: UserPreviewSerializer
  has_many :places

  def outings_count
    object.outings.count
  end
end
