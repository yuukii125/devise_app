class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(name: params[:name], price: params[:price], user_id: current_user.id)

  end
  
  
  

  private

  def items_params
    params.permit(:name, :price)    
  end
  

end
