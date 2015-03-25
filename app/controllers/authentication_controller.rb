class AuthenticationController < ApplicationController
  skip_before_action :authorize

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "Thanks for signing in"
      redirect_to "/"
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
    flash[:notice] = "You have signed out"
  end
end
