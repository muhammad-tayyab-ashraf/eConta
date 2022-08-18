class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation, :mobile, :company])
    devise_parameter_sanitizer.permit(:account_update,
      keys: [:name, :email, :password, :password_confirmation, :current_password, :mobile, :company, organization_attributes: [:name, :vat, :registration_no, :bank_account_1, :bank_account2, :bank_name,:street, :no, :zip, :county, :country]]
    )
  end
end
