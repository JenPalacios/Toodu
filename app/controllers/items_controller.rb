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

  def destroy
  @item = current_user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item was deleted"
      redirect_to current_user
    else
      flas[:error] = "Ooops, there was an error. Please try again."
      render :show
    end
  end
end


