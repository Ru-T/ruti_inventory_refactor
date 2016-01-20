class Item < ActiveRecord::Base
  belongs_to :category

  def expires_on
    created_at + shelf_life_days.days
  end

  def self.valid_items
    Item.all.select { |item| item.expires_on >= Date.today }
  end
end
