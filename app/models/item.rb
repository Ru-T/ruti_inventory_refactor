class Item < ActiveRecord::Base
  belongs_to :category

  def expires
    Date.today + shelf_life_days.days
  end
end
