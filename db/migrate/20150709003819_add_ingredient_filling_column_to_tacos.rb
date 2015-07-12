class AddIngredientFillingColumnToTacos < ActiveRecord::Migration
  def change
    add_column :tacos, :ingredients_filling_id, :integer
  end
end
