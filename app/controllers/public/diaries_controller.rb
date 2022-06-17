class Public::DiariesController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_diary_user, only: [:edit, :update, :destroy]

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

  def new
    @diary = Diary.new
    @tags = Tag.all
  end

  def create
    @diary = Diary.new(diary_params)
    @diary.user_id = current_user.id
    tags = Tag.find(params[:diary][:tag_ids].reject(&:blank?))
    tag_list = params[:diary][:tag_name].split(',') + tags.pluck(:tag_name)
    if @diary.save
      @diary.save_tags(tag_list)
      redirect_to diary_path(@diary)
    else
      @diaries = Diary.all.order(params[:sort])
      render :new
    end
  end

  def update
    if @diary.update(diary_params)
      flash[:notice] = 'You have updated diary successfully.'
      redirect_to diary_path(@diary)
    else
      render :edit
    end
  end

  def destroy
    @diary = Diary.find(params[:id])
    Diary.find(params[:id]).destroy
    redirect_to diaries_path
  end

  private

  def diary_params
    params.require(:diary).permit(:image, :place, :result, :good, :bad, {:tag_ids => []})
  end

  def correct_diary_user
    @diary = Diary.find(params[:id])
    if @diary.user != current_user
       redirect_to diaries_path
    end
  end
end
