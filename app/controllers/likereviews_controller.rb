class LikereviewsController < ApplicationController
  before_action :set_review

  def create
    @review.like(current_user)
    redirect_to root_path
  end

  def destroy
    @review.unlike(current_user)
    redirect_to root_path
  end

  private

  def set_review
    @review = Review.find(params[:review_id])
  end
end
