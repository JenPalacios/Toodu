class ItemsController < ApplicationController

    def create

    @user = current_user
    @items = @user.items

    @item = current_user.items.build(item_params)
    @item.user = @user 
    @new_item = Item.new
    
    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to current_user
    else
      flash[:error] = "Oops, there was an error. Please try again."
      render :new
    end
  end

  def destroy

  @user = current_user
  @item = @user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item was deleted"
    else
      flash[:error] = "Ooops, there was an error. Please try again."
    end

    respond_to do |format|
    format.html
    format.js
  end
  end

  private
  def item_params
  params.require(:item).permit(:name)
  end
end


