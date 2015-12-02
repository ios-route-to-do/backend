class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :location
      t.string :first_name
      t.string :last_name
      t.string :profile_image_url

      t.timestamps null: false
    end
  end
end
