class CategoriesController < ApplicationController
  def create
    Category.create(category_params)
    redirect_to root_path
  end

  private

  def category_params
    params[:category].permit!
  end
end
