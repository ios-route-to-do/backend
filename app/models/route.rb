class Route < ActiveRecord::Base
  belongs_to :user
  has_many :outings

  def self.newly_created(limit: 10)
    all.order(id: :desc).limit(limit)
  end

  def self.trending(limit: 10)
    all.where(id: Outing.order(id: :desc).select(:route_id).distinct.limit(limit))
  end

end
