class InventoryDashboard < ActiveRecord::Base
  attr_reader :items

  def initialize(items)
    @items = Item.valid_items
  end

  def new_item
    @new_item = Item.new
  end

  def new_category
    @category = Category.new
  end

  def save_item
    new_item.save
  end

  def save_category
    new_category.save
  end

end
