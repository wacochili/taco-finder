class CreateTaqueria < ActiveRecord::Migration
  def change
    create_table :taqueria do |t|
      t.string :name
      t.integer :phone
      t.float :longitude
      t.float :latitude

      t.timestamps null: true
    end
  end
end
