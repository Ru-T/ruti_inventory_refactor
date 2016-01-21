class InventoryDashboard < ActiveRecord::Base
  attr_reader :items

  def initialize(items)
    @items = Item.valid_items
  end

  def new_item(attrs = {:name, :shelf_life_days, :quantity, :price, :category_id})
    @new_item = Item.new(attrs)
  end

  def new_category(attrs = {:name})
    @category = Category.new(attrs)
  end

end
