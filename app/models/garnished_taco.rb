class GarnishedTaco < ActiveRecord::Base
  belongs_to :taco
  belongs_to :ingredient_garnish
end
