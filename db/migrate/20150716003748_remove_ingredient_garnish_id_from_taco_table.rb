class RemoveIngredientGarnishIdFromTacoTable < ActiveRecord::Migration
  def change
    remove_column :tacos, :ingredients_garnish_id, :integer
  end
end
