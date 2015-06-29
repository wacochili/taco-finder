class CreateTacos < ActiveRecord::Migration
  def change
    create_table :tacos do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.text :description
      t.integer :rating_taste
      t.integer :rating_heat
      t.integer :taqueria_id

      t.timestamps null: true
    end
  end
end
