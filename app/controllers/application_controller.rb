class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
   added_params = [:first_name, :last_name, :email, :password, :password_confirmation]
   devise_parameter_sanitizer.permit(:sign_in, keys: [:first_name])
   devise_parameter_sanitizer.permit(:sign_up, keys: added_params )
   devise_parameter_sanitizer.permit(:account_update, keys: added_params)
  end
end
