class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :route

  def self.rate(user_id, route_id, rating_score)
    rating = first_or_initialize(user_id: user_id, route_id: route_id)

    rating.rating = rating_score
    rating.save!
  end
end
