class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :require_login

  def current_user
    if !@current_user
      if session[:waiter_id] and Waiter.exists?(session[:waiter_id])
        @current_user = Waiter.find(session[:waiter_id])
      end
    end
  end

  def require_login
    if !current_user
      flash[:error] = "Please log in."
      redirect_to signin_path
    end
  end

end
