class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :require_signed_in!, :logged_in?, :current_user

  private


  def logged_in?
    !current_user.nil?
  end

  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def login_user(user)
    session[:session_token] = user.reset_session_token!
  end

  def logout_user!
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def require_signed_in!
    redirect_to new_session_url unless logged_in?
  end


end
