class TacosController < ApplicationController
  def index
    @tacos = Taco.all
  end

  def show
    @taco = Taco.all
  if params[:id] == "random"
    taco = Taco.all
    @taco = taco.sample
  else
    @taco = Taco.find_by(id: params[:id])
  end
  end

  def new
    @taco = Taco.new
    @taco.build_restaurant
  end

  def create
    coordinates = Geocoder.coordinates(params[:taco][:restaurant_attributes][:address])
    @taco =Taco.new(taco_params)
    @taco.user_id = current_user.id
    if @taco.save
      @taco.restaurant.update!(latitude: coordinates[0], longitude: coordinates[1], taco_id: @taco.id)
      flash[:success] = "Taco made!"
      redirect_to "/tacos/#{@taco.id}"
    else
      p @taco.errors
      render :new
    end
  end

  private

  def taco_params
    params.require(:taco).permit(:name, :price, :description, :taste_rating_id, :heat_rating_id, :ingredients_tortilla_id, :ingredients_filling_id, :ingredients_salsa_id, :checked_boxes, restaurant_attributes: [:id, :name, :address, :phone], ingredient_garnish_ids: [])
  end
end
