class TheatrecompaniesController < ApplicationController
  before_action :set_theatrecompany, only: [:show]

  def show
  end

  def new
    @theatrecompany = TheatreCompany.new
  end

  def create
    theatrecompany = TheatreCompany.new(theatrecompany_params)
    if theatrecompany.save
      redirect_to user_path(current_user.id)
    end
  end

  private

  def set_theatrecompany
    @theatrecompany = TheatreCompany.find(params[:id])
  end

  def theatrecompany_params
    params.require(:theatre_company).permit(:name, :name_kana, :postal_code, :prefecture, :address, :website, :establish, :member_id, :profile, :contact).merge(founder_id: current_user.id)
  end
    
end
