class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :route

  def self.rate(user_id, route_id, rating_score)
    rating = find_or_initialize_by(user_id: user_id, route_id: route_id)

    rating.rating = rating_score
    rating.save!
  end
end
