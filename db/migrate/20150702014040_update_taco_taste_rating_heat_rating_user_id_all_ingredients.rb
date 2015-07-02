class UpdateTacoTasteRatingHeatRatingUserIdAllIngredients < ActiveRecord::Migration
  def change
    rename_column :tacos, :taste_rating, :taste_rating_id
    rename_column :tacos, :heat_rating, :heat_rating_id
    add_column :tacos, :user_id, :integer
    add_column :tacos, :ingredients_tortilla_id, :integer
    add_column :tacos, :ingredients_garnish_id, :integer
    add_column :tacos, :ingredients_salsa_id, :integer

  end
end
