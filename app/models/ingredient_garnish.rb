class IngredientGarnish < ActiveRecord::Base
  has_many :garnished_tacos
  has_many :tacos, through: :garnished_tacos

end
