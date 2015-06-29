class RenameCategorizedTacos < ActiveRecord::Migration
  def change
    rename_table :categorized_tacos, :filling_categories
  end
end
