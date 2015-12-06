class CreateOutings < ActiveRecord::Migration
  def change
    create_table :outings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :route, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
