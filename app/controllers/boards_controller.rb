class BoardsController < ApplicationController
  before_action :authenticate_user!
  def index

  end

  def register
    @myclasses = MyClass.all
  end

  def import
    # fileはtmpに自動で一時保存される
    Myclass.import(params[:file])
    # redirect_to boards_url
    redirect_to boards_register_path(@user)
    #どっちか
    # redirect_to boards_register_path
  end

  # dbにuser_idの追加
  # def create
  #   @post = Post.new(
  #     content: params[:content],
  #     user_id: @current_user.id
  #   )
  # end

  # def set_current_user
  #   @current_user = User.find_by(id: session[:user_id])
  # end

end
