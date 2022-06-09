# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController

  before_action :reject_isdeleted_user, only: [:create]

  def after_sign_in_path_for(resource)
    diaries_path
  end

  def reject_isdeleted_user
    @user = User.find_by(email: params[:user][:email])
    if @user
      if @user.valid_password?(params[:user][:password]) && @user.is_deleted
        flash[:notice] = 'お客様は退会済みです。申し訳ございませんが、別のメールアドレスをお使いください。'
        redirect_to new_user_session_path
      end
    end
  end

end