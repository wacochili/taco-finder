class Taco < ActiveRecord::Base
  belongs_to :restaurant
  accepts_nested_attributes_for :restaurant
  belongs_to :user
  belongs_to :ingredient_tortilla
  has_many :images  
  has_many :ingredient_fillings  
  has_many :ingredient_salsas  
  has_many :ingredient_garnishes 
  has_many :taste_ratings 
  has_many :heat_ratings  
  
  validates :name, presence: true
  validates :description, presence: true

  attr_accessor :address, :latitude, :longitude
  geocoded_by :address

end