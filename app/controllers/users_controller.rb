class UsersController < ApplicationController
  def show
    @list = List.new
    user = User.find(params[:id])
    @lists = user.lists
  end
end
