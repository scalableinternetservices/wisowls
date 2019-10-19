class SessionsController < ApplicationController
  def new
    # If user is logged in, redirect to user page
    if current_user
      log_in current_user
      remember current_user
      redirect_to current_user
    end
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      remember user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_url
  end
end