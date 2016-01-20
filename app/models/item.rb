class Item < ActiveRecord::Base
  belongs_to :category

  def expires_on
    created_at + shelf_life_days.days
  end

  def self.valid_items
    Item.all.select { |item| item.expires_on >= Date.today }
  end

  def price_in_dollars
    Money.us_dollar(price).to_s
  end
end
