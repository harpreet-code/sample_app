class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Sign in"
      render 'new'
    else
      sign_in user
      logger.debug "The cookie for remember token is : #{cookies.signed[:remember_token]}" 
      logger.debug "The user id is : #{user.id}"
      logger.debug "The user salt is : #{user.salt}"
      redirect_to user
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
end
