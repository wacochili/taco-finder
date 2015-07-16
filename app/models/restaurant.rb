class Restaurant < ActiveRecord::Base
  has_many :tacos

  # validates :name, uniqueness: true
  # validates :address, uniqueness: true

  geocoded_by :address

end
