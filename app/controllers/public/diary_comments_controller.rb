class Public::DiaryCommentsController < ApplicationController
  def create
    diary = Diary.find(params[:diary_id])
    @comment = current_user.diary_comments.new(diary_params)
    @comment.diary_id = diary.id
    @comment.save
    render 'create'
  end

  def destroy
    @comment = DiaryComment.find_by(id: params[:id], diary_id: params[:diary_id])
    @comment.destroy
    render 'destroy'
  end

  def diary_params
    params.require(:diary_comment).permit(:comment)
  end
end