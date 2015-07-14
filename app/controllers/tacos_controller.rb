class TacosController < ApplicationController
  def index
    @tacos = Taco.all
  end

  def show
  end

  def new
    @taco = Taco.new
    @taco.build_restaurant
  end

  def create
    coordinates = Geocoder.coordinates(params[:address])
    p params[:address]
    @taco =Taco.new(taco_params)
    @taco.restaurant.latitude = coordinates[0]
    @taco.restaurant.longitude = coordinates[1]
    p coordinates
    if @taco.save
      flash[:success] = "Taco made!"
      redirect_to "/tacos/#{@taco.id}"
    else
      render :new
    end
  end

  private

  def taco_params
    params.require(:taco).permit(:name, :price, :description, :address, :taste_rating_id, :heat_rating_id, :ingredients_tortilla_id, :ingredients_filling_id, :ingredients_salsa_id, :ingredients_garnish_id, restaurant_attributes: [:id, :name])
  end
end
