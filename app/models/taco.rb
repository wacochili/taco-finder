class Taco < ActiveRecord::Base
  belongs_to :restaurant
  accepts_nested_attributes_for :restaurant
  belongs_to :user
  belongs_to :ingredient_tortilla
  has_many :images
  accepts_nested_attributes_for :images
  belongs_to :ingredient_filling  
  belongs_to :ingredient_salsa 
  has_many :garnished_tacos 
  has_many :ingredient_garnishes, through: :garnished_tacos
  has_many :user_ratings
  
  validates :name, presence: true
  validates :description, presence: true

  geocoded_by :address




  def calculate_authenticity
    filling_authenticity = ingredient_filling.authenticity
    tortilla_authenticity = ingredient_tortilla.authenticity
    salsa_authenticity = ingredient_salsa.authenticity

    garnish_rating_total = 0
    ingredient_garnishes.each do |garnish|
      garnish_rating_total += garnish.authenticity
    end
    garnish_rating_average = garnish_rating_total.to_f / ingredient_garnishes.length
    total_authenticity = (garnish_rating_average + filling_authenticity + tortilla_authenticity + salsa_authenticity) / 4
  end
end
