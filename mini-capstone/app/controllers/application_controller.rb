class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def current_weapon
    @current_weapon ||= Weapon.find(params[:id]) if params[:id]
  end
  helper_method :current_weapon
  
end
