# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController

  before_action :reject_isdeleted_user, only: [:create]

  def after_sign_in_path_for(resource)
    diaries_path
  end

  def reject_isdeleted_user
    @user = User.find_by(email: params[:user][:email])
    p @user
    if @user
      if @user.valid_password?(params[:user][:password]) && (@user.is_deleted == "退会")
        flash[:notice] = 'お客様は退会済みです。申し訳ございませんが、別のメールアドレスをお使いください。'
        redirect_to new_user_session_path
      end
    end
  end

  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to user_path(user), notice: 'guestuserでログインしました。'
  end

end