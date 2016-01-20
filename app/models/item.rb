class Item < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :name, :price, :quantity, :shelf_life_days

  scope :valid_items, -> {where 'shelf_life_days >
                          (Date.today - created_at).in_days'}

  def expires_on
    created_at + shelf_life_days.days
  end

  def price_in_dollars
    Money.us_dollar(price).to_s
  end
end
