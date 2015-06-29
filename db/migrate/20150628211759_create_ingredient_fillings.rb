class CreateIngredientFillings < ActiveRecord::Migration
  def change
    create_table :ingredient_fillings do |t|
      t.string :meat
      t.integer :authenticity

      t.timestamps null: false
    end
  end
end
