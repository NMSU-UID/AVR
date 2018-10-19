class SessionsController < ApplicationController
  def new

  end

  def create
    @waiter = Waiter.find_by(pin: params[:session][:pin])
    if @waiter
      session[:waiter_id] = @waiter.id
      flash[:success] = "You are logged in as #{@waiter.last_name}, #{@waiter.first_name}"
      redirect_to :tables
    else
      flash[:error] = 'Invalid PIN'
      redirect_to '/login'
    end
  end

  def destroy
    session[:waiter_id] = nil
    redirect_to root_path
  end
end
