class RenameSalsasTable < ActiveRecord::Migration
  def change
    rename_table :salsas, :ingredient_salsas
  end
end
