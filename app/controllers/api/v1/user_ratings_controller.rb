class Api::V1::UserRatingsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def show
    @taco = Taco.find_by(id: params[:id])

    heat_rating_total = 0
    taste_rating_total = 0
    user_ratings = UserRating.where(taco_id: @taco.id)
    heat_rating_counter = 0
    taste_rating_counter = 0
    user_ratings.each do |rating|
      if rating.heat_rating
        heat_rating_total += rating.heat_rating
        heat_rating_counter += 1
      end
      if rating.taste_rating
        taste_rating_total += rating.taste_rating
        taste_rating_counter += 1
      end
    end
      if user_ratings.length != 0
        @heat_rating = (heat_rating_total / heat_rating_counter).round(1)
        @taste_rating = (taste_rating_total / taste_rating_counter).round(1)
      else
        @heat_rating = 0
        @taste_rating = 0
      end
    end

    def create
      @user_rating = UserRating.new(taste_rating: params[:taste_rating], heat_rating: params[:heat_rating], taco_id: params[:id], user_id: current_user.id)
      # puts "blah"
      # p @user_rating
      if @user_rating.save
        render json: {}, status: 200
      else
        p @taco.errors
      # render :new
      render json: { errors: @user_rating.errors.full_messages }, status: 422
    end
  end
  def update
    @user_rating = UserRating.new(taste_rating: params[:taste_rating], heat_rating: params[:heat_rating], taco_id: params[:taco_id], user_id: current_user.id)
    if @user_rating.save
      flash[:success] = "Thanks for rating this taco!"
      redirect_to "/tacos/#{params[:taco_id]}"
    else
      p @taco.errors
      # render :new
      render json: { errors: @user_rating.errors.full_messages }, status: 422
    end
  end

end
