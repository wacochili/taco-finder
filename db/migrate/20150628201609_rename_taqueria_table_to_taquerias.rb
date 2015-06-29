class RenameTaqueriaTableToTaquerias < ActiveRecord::Migration
  def change
    rename_table :taqueria, :taquerias
  end
end
