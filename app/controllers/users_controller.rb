class UsersController < ApplicationController
  before_action :authenticate_user!
  # マイページ
  def show
    @user = User.find(params[:id])
    @userida = current_user.id
    # render template: 'boards/index'
  end

end
