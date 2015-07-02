class UpdateUserRatingsTasteRatingAndHeatRatingAddIds < ActiveRecord::Migration
  def change
    rename_column :user_ratings, :heat_rating, :heat_rating_id
    rename_column :user_ratings, :taste_rating, :taste_rating_id
  end
end
