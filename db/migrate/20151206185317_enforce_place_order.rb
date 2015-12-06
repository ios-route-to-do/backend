class EnforcePlaceOrder < ActiveRecord::Migration
  def change
    change_table :route_places do |t|
      t.index [:route_id, :place_id, :place_position], unique: true
    end
  end
end
