class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :quantityOnHand
      t.integer :quantityOnOrder
      t.float :weight
      t.float :costPerUnit
      t.float :regularPrice
      t.string :salePrice
      t.string :float
      t.date :expectedShippingDate
      t.date :lastUpdated
      t.date :dateAdded
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
