# frozen_string_literal: true

class Public::RegistrationsController < Devise::RegistrationsController

  before_action :configure_sign_up_params, only: [:create]

  def after_sign_up_path_for(resource)
    user_path(current_user)
  end

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:team_id, :name, :age, :number, :position, :speed_rate, :power_rate, :tactics_rate])
  end

end