class RenameImageColumnInImages < ActiveRecord::Migration
  def change
    rename_column :images, :image, :photo
  end
end
