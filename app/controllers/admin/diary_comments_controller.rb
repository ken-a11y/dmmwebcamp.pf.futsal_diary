class Admin::DiaryCommentsController < ApplicationController
  def destroy
    @comment = DiaryComment.find_by(id: params[:id], diary_id: params[:diary_id])
    @comment.destroy
    render 'destroy'
  end
end
