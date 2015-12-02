class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :full_description
      t.string :geo_location
      t.string :location
      t.string :address
      t.string :image_url
      t.string :coordinates

      t.timestamps null: false
    end
  end
end
