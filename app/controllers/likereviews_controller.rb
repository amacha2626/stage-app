class LikereviewsController < ApplicationController
  before_action :set_review

  def create
    @review.like(current_user)
    redirect_to stage_path(@review.stage_id)
  end

  def destroy
    @review.unlike(current_user)
    redirect_to stage_path(@review.stage_id)
  end

  private

  def set_review
    @review = Review.find(params[:review_id])
  end
end
