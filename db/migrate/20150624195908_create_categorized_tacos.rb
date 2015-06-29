class CreateCategorizedTacos < ActiveRecord::Migration
  def change
    create_table :categorized_tacos do |t|
      t.integer :taco_id
      t.integer :category_id

      t.timestamps null: true
    end
  end
end
