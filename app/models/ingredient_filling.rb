class IngredientFilling < ActiveRecord::Base
  belongs_to :filling_categories
  has_many :tacos
end
