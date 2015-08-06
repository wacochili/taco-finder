class AddAuthenticityToIngredientTortilla < ActiveRecord::Migration
  def change
    add_column :ingredient_tortillas, :authenticity, :integer
  end
end
