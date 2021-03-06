class TacosController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show, :search]
  def index
    p request.remote_ip
    @tacos = Taco.all
  end

  def show
    if current_user
      @current_user_id = current_user.id
    else
      @current_user_id = ""
    end
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
    @taco.images.build
  end

  def create
    unless user_signed_in?
    redirect_to "/"
    end
    coordinates = Geocoder.coordinates(params[:taco][:restaurant_attributes][:address])
    @taco =Taco.new(taco_params)
    @taco.user_id = current_user.id
    if @taco.save
      @taco.restaurant.update!(latitude: coordinates[0], longitude: coordinates[1], taco_id: @taco.id)
      average_authenticity = @taco.calculate_authenticity
      @taco.update!(authentic_score: average_authenticity)
      flash[:success] = "Taco made!"
      redirect_to "/tacos/#{@taco.id}"
    else
      p @taco.errors
      render :new
    end
  end

  def edit
    unless user_signed_in? && current_user.admin
      redirect_to "/"
    end
    @taco = Taco.find_by(id: params[:id])
  end

  def update
    coordinates = Geocoder.coordinates(params[:taco][:restaurant_attributes][:address])
    @taco = Taco.find_by(id: params[:id])
    @taco.update(taco_params)
    if @taco.save
      @taco.restaurant.update!(latitude: coordinates[0], longitude: coordinates[1], taco_id: @taco.id)
      flash[:success] = "This taco has been updated!"
      redirect_to "/tacos/#{@taco.id}"
    else
      p @taco.errors
      render :edit
    end
  end

  def search #not RESTful - be on the lookout for another way later
  search_term = params[:search]
  @tacos = Taco.where("name LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
  render :index #use if we ever have an action whose view name is diff than action
  end

  private

  def taco_params
    params.require(:taco).permit(:name, :price, :description, :taste_rating_id, :heat_rating_id, :ingredient_tortilla_id, :ingredient_filling_id, :ingredient_salsa_id, :checked_boxes, restaurant_attributes: [:id, :name, :address, :phone], images_attributes: [:photo], ingredient_garnish_ids: [])
  end
end
