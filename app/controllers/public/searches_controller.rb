class Public::SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @word = params[:word]
    @range = params[:range]
    @search = params[:search]


    if @range == "Diary"
      @records = Diary.looks(@search, @word).order(created_at: :desc).page(params[:page]).per(8)
    elsif @range == "Tag"
      # タグが配列となっているため、ページネーションが使用できない
      @records = Tag.looks(@search, @word).sort_by(&:created_at).reverse
    end
  end
end