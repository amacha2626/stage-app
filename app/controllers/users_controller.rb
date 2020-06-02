class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @theatrecompanies = TheatreCompany.where(founder_id: params[:id])
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :show
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :username, :email, :caption, :image)
  end

end
