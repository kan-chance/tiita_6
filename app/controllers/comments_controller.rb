class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to controller: :boards, action: :show, id: @comment.board_id
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :board_id)
  end
end
