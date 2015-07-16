class CreateGarnishedTacos < ActiveRecord::Migration
  def change
    create_table :garnished_tacos do |t|
      t.integer :taco_id
      t.integer :ingredients_garnish_id

      t.timestamps 
    end
  end
end
