FactoryGirl.define do
  factory :item do |item|
    item.name "An item"
    item.price 10.00
    item.quantity 17
    item.shelf_life_days 4
  end
end
