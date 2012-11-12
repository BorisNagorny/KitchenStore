class CreateCustomerPurchases < ActiveRecord::Migration
  def change
    create_table :customer_purchases do |t|

      t.timestamps
    end
  end
end
