class Review < ApplicationRecord
  belongs_to :stage
  belongs_to :user
  has_many :like_reviews, dependent: :destroy
  has_many :like_users, through: :like_reviews, source: :user

  def like(user)
    like_reviews.create(user_id: user.id)
  end

  def unlike(user)
    like_reviews.find_by(user_id: user.id).destroy
  end

  def like?(user)
    like_users.include?(user)
  end
end
