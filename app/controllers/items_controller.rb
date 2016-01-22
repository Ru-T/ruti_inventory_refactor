class ItemsController < ApplicationController

  def create
    @inventory_dashboard = InventoryDashboard.new(Item.all)

    if @inventory_dashboard.save_item(item_params)
      flash[:success] = 'success'
      redirect_to root_path
    else
      flash[:error] = 'error message'
      render :index
    end
  end

  def index
    @inventory_dashboard = InventoryDashboard.new(Item.all)
  end

  private

  def item_params
    params[:item].permit(:name, :price, :quantity, :shelf_life_days)
  end
end
