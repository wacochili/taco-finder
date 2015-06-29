class CreateIngredientTortillas < ActiveRecord::Migration
  def change
    create_table :ingredient_tortillas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
