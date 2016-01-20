class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      flash[:error] = "Invalid"
      redirect_to root_path
    end
  end

  def index
    @item = Item.new
    @items = Item.valid_items
    @category = Category.new
  end

  private

  def item_params
    params[:item].permit(:name, :price, :quantity, :shelf_life_days)
  end
end
