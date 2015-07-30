class ChangeDataTypeOfRatingsInUserRatingsToDecimel < ActiveRecord::Migration
  def change
    change_table :user_ratings do |t|
      t.change :taste_rating, :decimal, precision: 6, scale: 2
      t.change :heat_rating, :decimal, precision: 6, scale: 2
  end
  end
end
