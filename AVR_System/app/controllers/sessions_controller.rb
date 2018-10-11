class SessionsController < ApplicationController
  def new

  end

  def create
    @waiter = Waiter.find_by(pin: params[:session][:pin])
    if @waiter
      session[:waiter_id] = @waiter.id
      redirect_to :waiters
    else
      # flash[:error] = "Invalid PIN!"
      redirect_to '/login', danger: "Invalid PIN!"
    end
  end

  def destroy
    session[:waiter_id] = nil
    redirect_to root_path
  end
end
