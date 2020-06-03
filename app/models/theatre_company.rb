class TheatreCompany < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :founder, class_name: 'User'
  has_many :stages
end
