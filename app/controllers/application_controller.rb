class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :fname
    devise_parameter_sanitizer.for(:sign_up) << :lname
    devise_parameter_sanitizer.for(:account_update) << :address
    devise_parameter_sanitizer.for(:account_update) << :city
    devise_parameter_sanitizer.for(:account_update) << :state
    devise_parameter_sanitizer.for(:account_update) << :zip
    devise_parameter_sanitizer.for(:account_update) << :home_phone
    devise_parameter_sanitizer.for(:account_update) << :cell_phone
    devise_parameter_sanitizer.for(:account_update) << :height
    devise_parameter_sanitizer.for(:account_update) << :weight
    devise_parameter_sanitizer.for(:account_update) << :referring_physician
    devise_parameter_sanitizer.for(:account_update) << :procedure_type
    devise_parameter_sanitizer.for(:account_update) << :insurance_provider
    devise_parameter_sanitizer.for(:account_update) << :group_number
    devise_parameter_sanitizer.for(:account_update) << :id_number
    devise_parameter_sanitizer.for(:account_update) << :insurance_phone
  end
end
