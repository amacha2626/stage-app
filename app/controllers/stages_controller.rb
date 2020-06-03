class StagesController < ApplicationController
  before_action :set_stage, only: [:show, :edit, :update]

  def show
  end

  def new
    @stage = Stage.new
    @theatrecompanies = TheatreCompany.where(founder_id: current_user.id).pluck(:name, :id)
  end

  def create
    stage = Stage.new(stage_params)
    if stage.save
      redirect_to theatrecompany_path(stage.theatre_company_id)
    else
      @theatrecompanies = TheatreCompany.where(founder_id: current_user.id).pluck(:name, :id)
      render :new
    end
  end

  def edit
  end

  def update
    if @stage.update(stage_params)
      redirect_to stage_path(@stage.id)
    else
      render :edit
    end
  end

  private

  def set_stage
    @stage = Stage.find(params[:id])
  end

  def stage_params
    params.require(:stage).permit(:title, :startperiod, :lastperiod, :theater, :image, :member, :writer, :director, :lowestprice, :highestprice, :website, :timetable, :explanation, :etc, :category, :theatre_company_id)
  end
  
end
