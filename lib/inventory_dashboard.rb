class InventoryDashboard
  attr_reader :items

  def initialize(items)
    @items = Item.valid_items
  end

  def new_item(attrs = {})
    @item = Item.new(attrs)
  end

  def inventory_categories
    Category.all
  end

  def new_category(attrs = {})
    @category = Category.new(attrs)
  end

  def save_item(attrs)
    new_item(attrs).save
  end

  def save_category(attrs)
    new_category(attrs).save
  end
end
