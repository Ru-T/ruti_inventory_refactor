class ItemsController < ApplicationController

  def create
    @inventory_manager = InventoryDashboard.new

    if @inventory_manager.save_piece_of_inventory(item_params)
      flash[:error] = 'error message'
      render :index
    else
      flash[:success] = 'success'
      redirect_to root_path
    end
  end

  def index
    @inventory_dashboard = InventoryDashboard.new(@items)
  end

  private

  def item_params
    params[:item].permit(:name, :price, :quantity, :shelf_life_days)
  end
end
