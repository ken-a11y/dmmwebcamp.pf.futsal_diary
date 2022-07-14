class Public::UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update]
  before_action :ensure_guest_user, only: [:edit]

  def show
    @user = User.find(params[:id])
    @diaries = @user.diaries.order(created_at: :desc).page(params[:page]).per(8)
  end

  def edit
    @user = User.find(params[:id])
    @team = Team.find(@user.team_id)
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      @users = User.where(team_id: @user.team_id)
      if @users.length == 1
        @team = Team.find(@user.team_id)
        @team.update(owner_id: @user.id)
      end
      flash[:notice] = 'You have updated user successfully.'
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def quit
    @user = current_user
  end

  def out
    @user = current_user
    @team = Team.find(@user.team_id)
    if @user == @team.owner
      redirect_to team_path(@team), flash: {notice: "チームオーナーの変更をお願い致します"}
    else
      @user.update(is_deleted: "退会") #ここでis_deletedカラムの値を"退会"に更新
      reset_session
      redirect_to root_path, flash: {out_notice: "ありがとうございました。またのご利用をお待ちしております"}
    end
  end

  def favorites
    @user = User.find(params[:id])
    favorites= DiaryFavorite.where(user_id: @user.id).pluck(:diary_id)
    @favorite_diaries = Diary.where(id: favorites).page(params[:page]).per(8)
  end

  private

  def user_params
    params.require(:user).permit(:team_id, :name, :age, :number, :position, :speed_rate, :power_rate, :tactics_rate)
  end

  def correct_user
    @user = User.find(params[:id])
    if current_user != @user
       redirect_to  user_path(current_user)
    end
  end

  def ensure_guest_user
    @user = User.find(params[:id])
    if @user.name == "guestuser"
      redirect_to user_path(current_user) , notice: 'ゲストユーザーはプロフィール編集画面へ遷移できません。'
    end
  end
end