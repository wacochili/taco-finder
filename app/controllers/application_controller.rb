class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  private ####################

  def authenticate_admin!
    unless user_signed_in? && current_user.admin
      redirect_to "/"
    end
  end
end