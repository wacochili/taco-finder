class CreateHeatRatings < ActiveRecord::Migration
  def change
    create_table :heat_ratings do |t|
      t.integer :heat_rating

      t.timestamps null: false
    end
  end
end
