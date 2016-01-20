require 'rails_helper'

RSpec.describe Item, type: :model do

  describe 'validations' do
    it "is valid with all fields" do
      expect(FactoryGirl.build(:item)).to be_valid
    end

    it "must have name to be valid" do
      expect(FactoryGirl.build(:item, name: "")).to_not be_valid
    end

    it "must have price to be valid" do
      expect(FactoryGirl.build(:item, price: "")).to_not be_valid
    end

    it "must have quantity to be valid" do
      expect(FactoryGirl.build(:item, quantity: "")).to_not be_valid
    end

    it "must have shelf_life_days to be valid" do
      expect(FactoryGirl.build(:item, shelf_life_days: "")).to_not be_valid
    end
  end

end
