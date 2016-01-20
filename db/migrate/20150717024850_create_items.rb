class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :shelf_life_days
      t.integer :quantity
      t.integer :price
      t.references :category
      t.timestamps null: false
    end
  end
end
