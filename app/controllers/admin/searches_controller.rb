class Admin::SearchesController < ApplicationController
  
  def search
    @word = params[:word]
    @range = params[:range]
    @search = params[:search]


    if @range == "Diary"
      @records = Diary.looks(@search, @word).order(created_at: :desc).page(params[:page]).per(8)
    elsif @range == "Tag"
      @records = Tag.looks(@search, @word).order(created_at: :desc).page(params[:page]).per(8)
    end
  end
  
end