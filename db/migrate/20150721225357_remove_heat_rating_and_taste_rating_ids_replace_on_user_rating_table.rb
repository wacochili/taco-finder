class RemoveHeatRatingAndTasteRatingIdsReplaceOnUserRatingTable < ActiveRecord::Migration
  def change
    rename_column :user_ratings, :taste_rating_id, :taste_rating
    rename_column :user_ratings, :heat_rating_id, :heat_rating
    drop_table :heat_ratings
    drop_table :taste_ratings
  end
end
