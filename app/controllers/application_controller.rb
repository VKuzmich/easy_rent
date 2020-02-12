class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:fullname, :password, :email) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:fullname, :current_password, :email) }
  end
end
