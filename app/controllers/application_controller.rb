class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def home
    render '/layouts/home'
  end
end
