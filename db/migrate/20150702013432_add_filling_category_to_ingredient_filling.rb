class AddFillingCategoryToIngredientFilling < ActiveRecord::Migration
  def change
    add_column :ingredient_fillings, :filling_categories_id, :integer
  end
end
