class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authorize

  def authorize
    unless current_user
      flash[:error] = "Please Sign In"
      redirect_to "/"
    end
  end
end
