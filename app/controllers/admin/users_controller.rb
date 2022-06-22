class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @diaries = @user.diaries.order(created_at: :desc).page(params[:page]).per(8)
  end

  def edit
     @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admin_user_path(@user)
    else
      render :edit
    end
  end

  def quit
    @user = current_user
  end

  def out
    @user = current_user
    @user.update(is_deleted: "退会")
    reset_session
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:team_id, :name, :age, :number, :position, :speed_rate, :power_rate, :tactics_rate)
  end
end