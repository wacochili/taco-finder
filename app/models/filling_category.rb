class FillingCategory < ActiveRecord::Base
  has_many :ingredient_fillings
end
