class ReviewsController < ApplicationController
  before_action :set_stage

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to stage_path(@review.stage_id)
    else
      render :new
    end
  end

  private

  def set_stage
    @stage = Stage.find(params[:stage_id])
  end

  def review_params
    params.require(:review).permit(:text, :score, :spoiler).merge(user_id: current_user.id, stage_id: params[:stage_id])
  end
end
