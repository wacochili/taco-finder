class CreateSalsas < ActiveRecord::Migration
  def change
    create_table :salsas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
