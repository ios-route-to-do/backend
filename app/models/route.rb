class Route < ActiveRecord::Base
  belongs_to :user
  has_many :outings
  has_many :route_places, -> { order :position }
  has_many :places, through: :route_places, source: :place
  has_many :ratings

  def self.newly_created(limit: 20)
    all.order(id: :desc).limit(limit)
  end

  def self.trending(limit: 20)
    routes = all.where(id: Outing.order(id: :desc).select(:route_id).distinct).limit(limit)
    routes = self.newly_created(limit) if routes.empty?

    routes
  end

  def rating
    ratings.average(:rating)
  end

end
