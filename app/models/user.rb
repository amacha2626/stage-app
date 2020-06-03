class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :caption, length: { maximum: 200 }

  mount_uploader :image, ImageUploader

  has_one :founder_theatrecompany, foreign_key: "fonder_id", class_name: 'TheatreCompany'
  has_many :reviews
end
