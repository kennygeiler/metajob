# app/controllers/users/registrations_controller.rb
class Companies::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:name, :city, :description, :link)
  end
end

