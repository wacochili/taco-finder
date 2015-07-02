class RemoveTacoIdFromFillingCategory < ActiveRecord::Migration
  def change
    remove_column :filling_categories, :taco_id, :integer
  end
end
