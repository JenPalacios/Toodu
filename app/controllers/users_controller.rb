class UsersController < ApplicationController

  def show
   @user = User.find(params[:id])
   @items = Item.all
  end

end
