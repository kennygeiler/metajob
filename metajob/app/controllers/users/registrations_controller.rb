# app/controllers/users/registrations_controller.rb
class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, :generate_code

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:ref_code, :invite_code)
  end

  def generate_code
    self.ref_code = rand(36**8).to_s(36);
  end

end
