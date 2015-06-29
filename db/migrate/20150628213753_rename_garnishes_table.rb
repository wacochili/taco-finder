class RenameGarnishesTable < ActiveRecord::Migration
  def change
    rename_table :garnishes, :ingredient_garnishes
  end
end
