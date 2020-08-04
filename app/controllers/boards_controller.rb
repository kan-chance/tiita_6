class BoardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @room = Room.find(params[:format])
    @boards = @room.boards.order(id: "DESC")
    @board = Board.new
  end

  def show
    @board = Board.find(params[:id])
    @comments = @board.comments.order(id: "ASC")
    @comment = Comment.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to controller: :boards, action: :index, format: @board.room_id
    end
  end

  private

  def board_params
    params.require(:board).permit(:title, :content, :user_id, :room_id)
  end

end