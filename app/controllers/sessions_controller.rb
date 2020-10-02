class SessionsController < ApplicationController

  def login
    render :login
  end

  def process_login
    user = User.find_by(username: params[:username])
    if user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      
      render :login
    end
  end

  def welcome
  end

end
