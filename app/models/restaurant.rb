class Restaurant < ActiveRecord::Base
  has_many :tacos

  attr_accessor :address, :latitude, :longitude
  
end
