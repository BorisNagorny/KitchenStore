# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121110012604) do

  create_table "customer_purchases", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "province"
    t.string   "city"
    t.string   "address"
    t.string   "numPurchases"
    t.date     "lastOrder"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "quantity"
    t.date     "orderdate"
    t.date     "expecteddate"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "quantityOnHand"
    t.integer  "quantityOnOrder"
    t.float    "weight"
    t.float    "costPerUnit"
    t.float    "regularPrice"
    t.string   "salePrice"
    t.string   "float"
    t.date     "expectedShippingDate"
    t.date     "lastUpdated"
    t.date     "dateAdded"
    t.string   "category"
    t.string   "description"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
