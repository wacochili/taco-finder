class User < ActiveRecord::Base
  has_many :tacos
  has_many :taste_ratings
  has_many :heat_ratings
  has_many :user_ratings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end