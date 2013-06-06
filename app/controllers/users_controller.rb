class UsersController < ApplicationController
  
  def new
    @title = "Sign In"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to NYC Job Hub!"
      redirect_to dashboard_path
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
  end
  
end
