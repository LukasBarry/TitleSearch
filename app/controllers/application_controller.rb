class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(_resource)
    profile_path(@user)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up, keys: [:email, :name, :company, :phone, :fax, :street_address,
      :city, :state, :zip, :avatar, tasks_attributes: [
        :id, :company_name, :email, :phone_number, :fax_number, :address,
        :main_contact, :_destroy]
      ]
    )
    devise_parameter_sanitizer.permit(
      :account_update, keys: [:email, :name, :company, :phone, :fax,
      :street_address, :city, :state, :zip, :avatar, tasks_attributes: [
        :id, :company_name, :email, :phone_number, :fax_number, :address,
        :main_contact, :_destroy]
      ]
    )
  end
end
