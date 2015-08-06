class AddAuthenticityToIngredientSalsas < ActiveRecord::Migration
  def change
    add_column :ingredient_salsas, :authenticity, :integer
  end
end
