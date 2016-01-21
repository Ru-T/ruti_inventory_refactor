class CategoriesController < ApplicationController
  def create
    @inventory_dashboard = InventoryDashboard.new(Item.all)
    @inventory_dashboard.save_category(category_params)
    redirect_to root_path
    end
  end

  private

  def category_params
    params[:category].permit!
  end
end
