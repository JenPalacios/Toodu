class ItemsController < ApplicationController

    def create

    @item = Item.new(params.require(:item).permit(:name))

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to current_user
    else
      flash[:error] = "Oops, there was an error. Please try again."
      render :new
    end
  end
end


