class InventoryDashboard < ActiveRecord::Base
  attr_reader :items

  def initialize(items)
    @items = Item.valid_items
  end

  def new_item(attrs)
    @new_item = Item.new(attrs)
  end

  def new_category(attrs)
    @category = Category.new(attrs)
  end
end
