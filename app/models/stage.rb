class Stage < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :theatre_company

  validates :title, presence: true
  validates :theater, presence: true
  validates :startperiod, presence: true
  validates :lastperiod, presence: true
  validates :lowestprice, presence: true
  validates :highestprice, presence: true
  validates :explanation, presence: true
  validates :category, presence: true
end
