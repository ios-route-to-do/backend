class EnsureRatingExistsOnlyOnce < ActiveRecord::Migration
  def change
    change_table :ratings do |t|
      t.index [:user_id, :route_id], unique: true
    end
  end
end
