class Item < ActiveRecord::Base
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :shelf_life_days, presence: true
  
  def expires
    Date.today + shelf_life_days.days
  end
end
