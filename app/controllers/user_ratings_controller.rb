class UserRatingsController < ApplicationController
  def create
    @user_rating = UserRating.new(taste_rating: params[:taste_rating], heat_rating: params[:heat_rating], taco_id: params[:taco_id], user_id: current_user.id)
    if @user_rating.save
      flash[:success] = "Thanks for rating this taco!"
      redirect_to "/tacos/#{params[:taco_id]}"
    else
      p @taco.errors
      render :new
    end
  end
  
  def show
    user_rating = UserRating.all
  end
end
