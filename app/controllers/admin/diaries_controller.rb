class Admin::DiariesController < ApplicationController
  def index
    @diaries = Diary.all.order(created_at: :desc).page(params[:page]).per(8)
    @user = current_user
  end

  def show
    @diary = Diary.find(params[:id])
    @diary_comment = DiaryComment.new
  end

  def edit
    @diary = Diary.find(params[:id])
    @tags = Tag.all
  end

  def update
    if @diary.update(diary_params)
      flash[:notice] = 'You have updated diary successfully.'
      redirect_to diary_path(@diary)
    else
      render :edit
    end
  end
end
