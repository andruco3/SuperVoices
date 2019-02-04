module SessionsHelper
  # Logs in the given Administrator.
  def log_in(administrator)
    session[:administrator_id] = administrator.id
  end


  def current_administrator
    if (administrator_id = session[:administrator_id])
      @current_administrator ||= Administrator.find_by(id: administrator_id)
    elsif (administrator_id = cookies.signed[:administrator_id])
      administrator = Administrator.find_by(id: administrator_id)
      if administrator && administrator.authenticated?(cookies[:remember_token])
        log_in administrator
        @current_administrator = administrator
      end
    end
  end


  def logged_in?
    !current_administrator.nil?
  end

  # Logs out the current Administrator.
  def log_out
    session.delete(:administrator_id)
    @current_administrator = nil
  end
end

