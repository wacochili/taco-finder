class RenameIngredientsGarnishToIngredientGarnish < ActiveRecord::Migration
  def change
    rename_column :garnished_tacos, :ingredients_garnish_id, :ingredient_garnish_id
  end
end
