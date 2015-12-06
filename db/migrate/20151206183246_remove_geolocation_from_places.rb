class RemoveGeolocationFromPlaces < ActiveRecord::Migration
  def change
    change_table :places do |t|
      t.remove :geo_location
    end
  end
end
