require 'rails_helper'

RSpec.describe Item, type: :model do

  let(:item) {FactoryGirl.create(:item)}
  let(:item2) {FactoryGirl.create(:item, created_at: Date.today, shelf_life_days: -1)}

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

end
