class Public::DiariesController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_diary_user, only: [:edit, :update, :destroy]

  def index
    @diaries = Diary.all.order(params[:sort])
  end

  def show
    @diary = Diary.find(params[:id])
    @diary_comment = Diaryomment.new
  end

  def edit
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    @diary.user_id = current_user.id
    @diary.save
    redirect_to diaries_path
  end

  def update
  end

  def destroy
    @diary = Diary.find(params[:id])
    Diary.find(params[:id]).destroy
    redirect_to diaries_path
  end

  private
  def diary_params
    params.require(:post_image).permit(:image,:place, :result, :good, :bad)
  end

  def correct_diary_user
    @diary = Diary.find(params[:id])
    if @diary.user != current_user
       redirect_to diaries_path
    end
  end
end
