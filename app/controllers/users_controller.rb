class UsersController < ApplicationController
  # マイページ
  def show
    @user = User.find(params[:id])
    @userida = current_user.id
    # render template: 'boards/index'
  end

end
