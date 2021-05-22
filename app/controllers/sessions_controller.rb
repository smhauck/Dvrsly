class SessionsController < ApplicationController
  def new
  end

  def create
    user=User.find_by(username: params[:username])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
    else
      redirect_to login_url, alert: "Invalid username / password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
  end
end
