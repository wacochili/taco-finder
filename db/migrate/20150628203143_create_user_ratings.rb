class CreateUserRatings < ActiveRecord::Migration
  def change
    create_table :user_ratings do |t|
      t.integer :user_id
      t.integer :taste_rating
      t.integer :heat_rating
      t.integer :taco_id

      t.timestamps null: false
    end
  end
end
