class CreateRoutePlaces < ActiveRecord::Migration
  def change
    create_table :route_places do |t|
      t.references :route, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true
      t.integer :place_position

      t.timestamps null: false
    end
  end
end
