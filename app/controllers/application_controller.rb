class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :signed_in?

  private
  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def signed_in?
    !!current_user
  end

  def sign_in(user)
    user.reset_token!
    session[:session_token] = user.session_token
    @current_user = user
  end

  def sign_out
    current_user.reset_token!
    session[:session_token] = nil
    @current_user = nil
  end

  def require_signed_in!
     unless current_user
      render json: { base: ['invalid email / password'] }, status: 401
     end
  end
end
