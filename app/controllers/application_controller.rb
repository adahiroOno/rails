class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  add_flash_types :success, :info, :warning, :danger
  
  before_action :current_user
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end