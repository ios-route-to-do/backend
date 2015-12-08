class RenamePlacePositionToPosition < ActiveRecord::Migration
  def change
    change_table :route_places do |t|
      t.rename :place_position, :position
    end
  end
end
