class MenusController < ApplicationController
  def index
    @menu = Group.all
    # redirect_to user_path(@user.id)
  end

  def show
   
  end
end
