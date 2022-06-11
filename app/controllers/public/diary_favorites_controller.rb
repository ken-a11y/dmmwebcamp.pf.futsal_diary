class Public::DiaryFavoritesController < ApplicationController
  def create
    @diary = Diary.find(params[:diary_id])
    favorite = current_user.diary_favorites.new(diary_id: @diary.id)
    favorite.save
  end

  def destroy
    @diary = Diary.find(params[:diary_id])
    favorite = current_user.diary_favorites.find_by(diary_id: @diary.id)
    favorite.destroy
  end
end
