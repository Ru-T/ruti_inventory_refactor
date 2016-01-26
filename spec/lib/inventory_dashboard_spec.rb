require "rails_helper"
require "inventory_dashboard.rb"

RSpec.describe InventoryDashboard do
  let!(:item) { FactoryGirl.create(:item) }
  let!(:category) { FactoryGirl.create(:category) }
  let!(:new_item) { subject.new_item(name: "N", shelf_life_days: 2, quantity: 1, price: 2) }
  let!(:new_category) { subject.new_category(name: "Category2") }

  subject { InventoryDashboard.new(Item.all) }

  describe "#initialize" do
    it "is initialized with all valid items" do
      expect(subject.items).to include item
    end
  end

  describe "#new_item" do
    it "creates a new item" do
      expect(new_item).to respond_to(:save)
      expect{ new_item.save }.to change { Item.count }.by(1)
    end
  end

  describe "#inventory_categories" do
    it "returns all existing categories" do
      expect(subject.inventory_categories).to include category
    end
  end

  describe "#new category" do
    it "creates a new category" do
      expect(new_category).to respond_to(:save)
      expect{ new_category.save }.to change { Category.count }.by(1)
    end
  end
end
