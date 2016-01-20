require 'rails_helper'

RSpec.describe Item, type: :model do

  let(:item) {FactoryGirl.create(:item)}
  let(:item2) {FactoryGirl.create(:item, price: 3,
              created_at: Date.today, shelf_life_days: -1)}

  describe '.valid_items' do

    it 'returns all items that have not expired' do
      expect(Item.valid_items).to include item
    end

    it 'does not return expired items' do
      expect(Item.valid_items).to_not include item2
    end
  end

  describe '#expires_on' do

    it 'returns an expiration date for an item' do
      expect(item.expires_on).to eq (Date.today + 14.days)
      expect(item2.expires_on).to eq (Date.today - 1.days)
    end

  end

  describe '#price_in_dollars' do

    it 'returns a dollar amount for price' do
      expect(item.price_in_dollars).to eq '0.10'
      expect(item2.price_in_dollars).to eq '0.03'
    end

  end

end
