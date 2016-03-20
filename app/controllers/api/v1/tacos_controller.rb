class Api::V1::TacosController < ApplicationController
	def index
    @tacos = Taco.all.order("tacos.authentic_score desc")
  end
end