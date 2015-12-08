class RemoveCoordinatesFromPlaces < ActiveRecord::Migration
  def change
    change_table :places do |t|
      t.remove :coordinates
    end
  end
end
