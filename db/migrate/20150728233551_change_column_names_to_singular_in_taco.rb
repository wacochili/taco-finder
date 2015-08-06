class ChangeColumnNamesToSingularInTaco < ActiveRecord::Migration
  def change
  	rename_column :tacos, :ingredients_tortilla_id, :ingredient_tortilla_id
  	rename_column :tacos, :ingredients_filling_id, :ingredient_filling_id
  	rename_column :tacos, :ingredients_salsa_id, :ingredient_salsa_id
  end
end
