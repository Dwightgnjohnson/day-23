class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by username: params[:username]
    if user.password == params[:password]
      session[:user_id] = user.id
      session[:signed_in] = true
    
      redirect_to session[:return_to], notice: "Sign in YO"
    else
      render :new
    end
  end

  def sign_out
    session[:signed_in] = false
    session.delete(:user_id)
    redirect_to root_path, notice: "PEACE"
  end
end
