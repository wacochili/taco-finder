class Image < ActiveRecord::Base
  belongs_to :taco

  mount_uploader :photo, TacoPhotoUploader
end