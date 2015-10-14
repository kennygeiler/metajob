# app/controllers/users/registrations_controller.rb
class Companies::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:name, :city, :description)
  end
end

# config/routes.rb
devise_for :companies, :controllers => { :registrations => "companies/registrations" }