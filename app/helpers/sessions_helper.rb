module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if @current_user.nil?
      @current_user = User.find_by(id: session[:user_id])
    else
      @current_user
    end
  end

  def current_user?(user)
    user == current_user
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def forget(user)
    user.forget
    session.delete(:user_id)
  end

  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end
