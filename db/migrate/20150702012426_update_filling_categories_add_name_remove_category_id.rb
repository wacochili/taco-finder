class UpdateFillingCategoriesAddNameRemoveCategoryId < ActiveRecord::Migration
  def change
    remove_column :filling_categories, :category_id, :integer
    add_column :filling_categories, :name, :string
  end
end
