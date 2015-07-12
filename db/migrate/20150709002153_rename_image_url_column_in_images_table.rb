class RenameImageUrlColumnInImagesTable < ActiveRecord::Migration
  def change
    rename_column :images, :image_url, :image
  end
end
