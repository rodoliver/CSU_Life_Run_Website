class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(username: params[:session][:username])#.downcase# 
    #if user && user.authenticate(params[:session][:password])
    # below is the same as above
    if user&.authenticate(params[:session][:password])
      #forwarding_url = session[:forwarding_url]
      reset_session
      log_in user
      redirect_to user
      #redirect_to forwarding
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
