class RemoveRatingFromRoutes < ActiveRecord::Migration
  def change
    change_table :routes do |t|
      t.remove :rating
    end
  end
end
