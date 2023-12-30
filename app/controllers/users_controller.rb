class UsersController < ApplicationController
  def show
    @list = List.new
    @lists = List.all
  end
end
