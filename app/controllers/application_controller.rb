class ApplicationController < ActionController::Base

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_uid])
    else
      @current_user = nil
    end
  end

  protected

  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end

end
