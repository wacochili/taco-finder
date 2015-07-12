class RenameTaqueriaIdColumnInTacos < ActiveRecord::Migration
  def change
    rename_column :tacos, :taqueria_id, :taquerium_id
  end
end
