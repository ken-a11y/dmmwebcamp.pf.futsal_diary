# frozen_string_literal: true

class Public::RegistrationsController < Devise::RegistrationsController

  before_action :configure_sign_up_params, only: [:create]
  after_action :create_user_icon, only: [:create]

  def after_sign_up_path_for(resource)
    user_path(current_user)
  end

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:team_id, :name, :age, :number, :position, :speed_rate, :power_rate, :tactics_rate])
  end

  def create_user_icon
    current_user.get_profile_image unless current_user.nil?
  end
end