module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
    User.current = user
  end

  # Remember a user in a persistent session
  def remember(user)
    user.remember
    cookies.permanent.encrypted[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  # Returns the user corresponding to the remember token cookie.
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: session[:user_id])
      User.current = @current_user
    elsif (user_id = cookies.encrypted[:user_id])
      #raise #artificial stumbling block for code testing
      user = User.find_by(id: user_id)
      User.current = user
      if user && user.authenticated?(:remember, cookies[:remember_token])
        log_in user
        @current_user = user
        User.current = @current_user
      end
    end 
  end

  #returns true if the given user is current user
  def current_user?(user)
    user && user == current_user
  end
  
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  #
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Logs out the current user.
  def log_out
    #forget(current_user)
    session.delete(:user_id)
    #reset_session
    @current_user = nil
  end

  #Redirect to stored location or to default
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  #Stores the URL trying to be access
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end

end

