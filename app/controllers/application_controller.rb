class ApplicationController < ActionController::Base
  before_action :require_user, only: [:index, :show]
  protect_from_forgery with: :exception

  helper_method :current_user
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/logIn' unless current_user
  end
  # here is where the user log in should start

  # admin controler???
end
