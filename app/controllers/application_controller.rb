class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def home
    @user = User.new
    render '/layouts/home'
  end

  def logged_in_user
    return if logged_in?

    store_location
    flash[:danger] = 'please log in.'
    redirect_to login_url
  end
end
