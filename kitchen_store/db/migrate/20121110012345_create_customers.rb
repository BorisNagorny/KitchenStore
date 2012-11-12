class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :province
      t.string :city
      t.string :address
      t.string :numPurchases
      t.date :lastOrder

      t.timestamps
    end
  end
end
