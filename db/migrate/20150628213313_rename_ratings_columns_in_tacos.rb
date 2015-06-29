class RenameRatingsColumnsInTacos < ActiveRecord::Migration
  def change
    rename_column :tacos, :rating_taste, :taste_rating
    rename_column :tacos, :rating_heat, :heat_rating
  end
end
