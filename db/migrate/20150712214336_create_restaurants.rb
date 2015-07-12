class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone
      t.float :longitude
      t.float :latitude
      t.integer :taco_id

      t.timestamps null: false
    end
  end
end
