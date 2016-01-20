class Item < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :name, :price, :quantity, :shelf_life_days

  def expires
    Date.today + shelf_life_days.days
  end
end
