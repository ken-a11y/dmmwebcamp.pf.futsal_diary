class Public::UsersController < ApplicationController
  def show
    @user =　User.find(params[:id])
    @diaries = @user.diaries
  end
  
  def edit
    @user =　User.find(params[:id])
  end
  
  def update
    if @user.update(user_params)
      flash[:notice] = 'You have updated user successfully.'
      redirect_to user_path(@user)
    else
      render :edit
    end
  end
  
  def quit
  end
  
  def out
  end

  def user_params
    params.require(:user).permit(:name)
  end
end