class UsersController < ApplicationController
  
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
      if @user.save
      	flash[:success] = "You are logged in !"
      else
        render 'new'
      end
  end

  def show
  end

  private
    def user_params
    	params.permit(:name)
  	end
end
