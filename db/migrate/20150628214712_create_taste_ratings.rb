class CreateTasteRatings < ActiveRecord::Migration
  def change
    create_table :taste_ratings do |t|
      t.integer :taste_rating

      t.timestamps null: false
    end
  end
end
