class Api::V1::UserRatingsController < ApplicationController
  def show
    @taco = Taco.find_by(id: params[:id])
  
    # heat_rating_total = 0
    # taste_rating_total = 0
    # user_ratings = UserRating.where(taco_id: @taco.id)
    # user_ratings.each do |rating|
    #   heat_rating_total += rating.heat_rating
    #   taste_rating_total += rating.taste_rating
    # end
    # @heat_rating = heat_rating_total / user_ratings.length
    # @taste_rating = taste_rating_total / user_ratings.length
  end
end
