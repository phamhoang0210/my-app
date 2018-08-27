module SessionHelper
  #login
  def log_in user
    session[:user_id] = user.id
  end
  #logout
  def log_out
    session.delete :user_id
  end
  def current_user
    @current_user ||= User.find_by id: session[:user_id]
  end
  #check user has logged in before
  def require_login?
    current_user.present?
  end
end
