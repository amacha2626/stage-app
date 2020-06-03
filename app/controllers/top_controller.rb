class TopController < ApplicationController
  def index
    @stages = Stage.all.limit(4)
    @theatrecompanies = TheatreCompany.all.limit(6)
    @users = User.all.limit(3)
  end
end
