class AddAuthenticityToIngredientGarnishesTable < ActiveRecord::Migration
  def change
    add_column :ingredient_garnishes, :authenticity, :integer
  end
end
