require 'rails_helper'

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

  describe "#initialize" do
    it "is initialized with all valid items" do
      expect(InventoryDashboard.new(items)).to include item
    end
  end

  describe "#new_item" do
    it "creates a new item" do
      expect(InventoryDashboard.new_item({name: "ThisItem"})).name.to eq "ThisItem"
    end
  end

  describe "#inventory_categories" do
    it "returns all existing categories" do
      expect(InventoryDashboard.inventory_categories).to include category
    end
  end

  describe "#new category" do
    it "creates a new category" do
      expect(InventoryDashboard.new_category({name: "Category2"})).name.to eq "Category2"
    end
  end

  describe "#save_item" do
    it "saves a new item" do
      expect(InventoryDashboard.save_item({name: "NewItem"})).name.to eq "NewItem"
    end
  end

  describe "#save_category" do
    it "saves a new category" do
      expect(InventoryDashboard.save_category({name: "NewCategory"})).name.to eq "NewCategory"
    end
  end

end
