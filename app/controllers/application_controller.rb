class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  
  private
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
  
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_url
    end
  end

  def logged_in?
    if !!current_user
      return true
    end

    redirect_to "/login"
  end

  def is_user?(id)
  	if id.to_i === current_user.id.to_i 
  		return true
  	else
  		false
  	end
  end
end
