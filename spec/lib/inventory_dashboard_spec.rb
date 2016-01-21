require 'rails_helper'
require 'inventory_dashboard.rb'

RSpec.describe InventoryDashboard do
  let!(:item) { FactoryGirl.create(:item) }
  let!(:category) { FactoryGirl.create(:category) }
  let(:item2) do
    FactoryGirl.create(
      :item,
      price: 3,
      created_at: Date.today,
      shelf_life_days: -1
    )
  end

  subject { InventoryDashboard.new }

  describe "#initialize" do
    it "is initialized with all valid items" do
      expect(InventoryDashboard.new.items).to include item
    end
  end

  describe "#new_item" do
    it "creates a new item" do
      expect(subject.new_item(name: "ThisItem", shelf_life_days: 2, quantity: 1, price: 2)).to respond_to(:save)
    end
  end

  describe "#inventory_categories" do
    it "returns all existing categories" do
      expect(subject.inventory_categories).to include category
    end
  end

  describe "#new category" do
    it "creates a new category" do
      expect(subject.new_category(name: "Category2")).to respond_to(:save)
    end
  end
end
