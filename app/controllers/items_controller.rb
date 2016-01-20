class ItemsController < ApplicationController
  def home
    @item = Item.new
    @items = Item.all
  end

  def create
    @items = Item.all
    if item_params[:name].blank?
      @item = Item.new
      flash[:error] = "Invalid"
      render :home and return
    end
    if item_params[:price].blank?
      @item = Item.new
      flash[:error] = "Invalid"
      render :home and return
    end
    if item_params[:quantity].blank?
      @item = Item.new
      flash[:error] = "Invalid"
      render :home and return
    end
    if item_params[:shelf_life_days].blank?
      @item = Item.new
      flash[:error] = "Invalid"
      render :home and return
    end
    if !(@item = Item.create(item_params))
    else
      @item = Item.new
    end
    render :home
  end

  private

  def item_params
    params[:item].permit(:name, :price, :quantity, :shelf_life_days)
  end
end
