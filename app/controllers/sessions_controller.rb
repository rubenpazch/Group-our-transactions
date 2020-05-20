class SessionsController < ApplicationController
  def signin; end

  def create
    @user = User.find_by(username: params[:username])
    if @user
      log_in @user
      redirect_to @user, notice: 'user successfully logged in.'
    else
      redirect_to login_url, notice: 'user not found.'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
