class BoardsController < ApplicationController
  before_action :authenticate_user!
  def index

  end

  def register
    @myclasses = MyClass.all
  end
end
