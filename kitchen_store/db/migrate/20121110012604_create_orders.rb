class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.date :orderdate
      t.date :expecteddate

      t.timestamps
    end
  end
end
