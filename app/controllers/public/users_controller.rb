class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @diaries = @user.diaries
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      flash[:notice] = 'You have updated user successfully.'
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def create
  end

  def destroy
  end

  def quit
    @user = current_user
  end

  def out
    @user = current_user
    @user.update(is_deleted: "退会") #ここでis_deletedカラムの値を"退会"に更新
    reset_session
    redirect_to root_path, flash: {out_notice: "ありがとうございました。またのご利用をお待ちしております"}
  end

  def user_params
    params.require(:user).permit(:name)
  end
end