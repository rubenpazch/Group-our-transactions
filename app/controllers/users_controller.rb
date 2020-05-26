class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[index edit update destroy]

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in @user
      redirect_to wishlists_path, notice: 'User was successfully created.'
    else
      redirect_to signup_path, notice: @user.errors[:username].first
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username)
  end
end
