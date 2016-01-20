require 'rails_helper'

RSpec.describe Item, type: :model do

  let(:item) {FactoryGirl.create(:item)}
  let(:item2) {FactoryGirl.create(:item, shelf_life_days: -1)}

  describe '.valid_items' do

    it 'returns all items that have not expired' do
      expect(Item.valid_items).to include item
    end

    it 'does not return expired items' do
      expect(Item.valid_items).to_not include item2
    end
  end

end
