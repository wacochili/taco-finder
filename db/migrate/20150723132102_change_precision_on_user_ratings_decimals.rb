class ChangePrecisionOnUserRatingsDecimals < ActiveRecord::Migration
  def change
    change_column :user_ratings, :taste_rating, :decimal, :precision => 4, :scale => 2
    change_column :user_ratings, :heat_rating, :decimal, :precision => 4, :scale => 2
  end
end
