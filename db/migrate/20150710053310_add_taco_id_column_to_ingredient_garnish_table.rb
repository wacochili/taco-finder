class AddTacoIdColumnToIngredientGarnishTable < ActiveRecord::Migration
  def change
    add_column :ingredient_garnishes, :taco_id, :integer
  end
end
