class ItemsController < ApplicationController

    def new
      @item = Item.new
    end

    def create
    @user = User.find(params[:user_id])  
    @item = @user.items.build(item_params)
    
    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to @user
    else
      flash[:error] = "Oops, there was an error. Please try again."
      render :new
    end
  end

  def destroy

  @item = Item.find(params[:id])

    if @item.destroy
    respond_to do |format|
    format.html
    format.js
    end
    else
      flash[:error] = "Ooops, there was an error. Please try again."
    end
  end

  private
  def item_params
  params.require(:item).permit(:name)
  end
end


