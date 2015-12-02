class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :title
      t.string :location
      t.string :full_description
      t.string :image_url
      t.float :rating
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
