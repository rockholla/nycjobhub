class SessionsController < ApplicationController
  
  def new
    @title = "Sign In"
  end

  def create
    @user = User.find_by_email(params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      sign_in @user
      redirect_to dashboard_path
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'users/new'  # same as redirect_to signup_path -- replace with js.erb that displays error
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
