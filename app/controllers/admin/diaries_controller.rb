class Admin::DiariesController < ApplicationController
  def index
    @diaries = Diary.all.order(created_at: :desc).page(params[:page]).per(8)
  end

  def show
    @diary = Diary.find(params[:id])
  end

  def edit
    @diary = Diary.find(params[:id])
    @tags = Tag.all
  end

  def update
    @diary = Diary.find(params[:id])
    if @diary.update(diary_params)
      flash[:notice] = 'You have updated diary successfully.'
      redirect_to admin_diary_path(@diary)
    else
      render :edit
    end
  end

  def destroy
    @diary = Diary.find(params[:id])
    Diary.find(params[:id]).destroy
    redirect_to admin_diaries_path
  end

  private

  def diary_params
    params.require(:diary).permit(:image, :place, :result, :good, :bad, {:tag_ids => []})
  end

end
