class SessionsController < ApplicationController
  skip_before_action :require_login, :only => [:new,:create]

  def new
    redirect_to root_path if current_user
  end

  def create
    waiter = Waiter.find_by(pin: params[:session][:pin])
    if waiter
      session[:waiter_id] = waiter.id
      flash[:success] = "You are logged in as #{waiter.last_name}, #{waiter.first_name}"
      if waiter.manager
        redirect_to :waiters
      else
        redirect_to :tables
      end
    else
      flash[:error] = 'Invalid PIN'
      redirect_to :signin
    end
  end

  def destroy
    session[:waiter_id] = nil
    redirect_to root_path
  end
end
