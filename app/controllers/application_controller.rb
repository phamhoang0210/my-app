class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  include SessionHelper

  before_action :require_login
  def require_login
    unless require_login?
      redirect_to login_path
    end
  end
end
