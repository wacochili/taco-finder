class Api::V1::RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.includes(:tacos).order("tacos.authentic_score desc")
	end
	def show
		@restaurant = Restaurant.find_by(id: params[:id])
	end
end
