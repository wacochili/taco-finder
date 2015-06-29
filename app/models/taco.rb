class Taco < ActiveRecord::Base
  belongs_to :taqueria
  has_many :images
  has_many :categorized_tacos
  has_many :categories, through: :categorized_tacos
  
  validates :name, presence: true
  validates :description, presence: true

end