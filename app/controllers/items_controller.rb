class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(name: items_params[:name], price: items_params[:price], user_id: current_user.id)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
  

  private

  def items_params
    params.permit(:name, :price)    
  end
  

end
