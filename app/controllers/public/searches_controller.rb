class Public::SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @word = params[:word]
    @range = params[:range]
    @search = params[:search]
    

    if @range == "diary"
      @records = Diary.looks(@search, @word)
    elsif @range == "Tag"
      @records = Tag.looks(@search, @word)
    end
  end
end