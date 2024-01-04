class ListsController < ApplicationController
  def create
    list = List.new(list_params)
    list.save
    redirect_to user_path(current_user)
  end

  def show
    @list = List.find(params[:id])
  end

  def complete
    @list = List.find(params[:id])
    @list.update(is_complete: true)
    redirect_to user_path(current_user)
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
