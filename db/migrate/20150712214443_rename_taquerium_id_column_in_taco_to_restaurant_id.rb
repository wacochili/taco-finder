class RenameTaqueriumIdColumnInTacoToRestaurantId < ActiveRecord::Migration
  def change
    rename_column :tacos, :taquerium_id, :restaurant_id
  end
end
