class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :username, :password, :password_confirmation) }
  devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ roles: [] }, :email, :username, :password, :password_confirmation) }
  end
  
  private
  # Overwriting the sign_out redirect path method
  def after_sign_up_path_for(resource)
    edit_user_registration_path
  end
end
