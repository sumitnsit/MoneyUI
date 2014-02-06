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

ActiveRecord::Schema.define(:version => 20140206170005) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.decimal  "init_balance"
    t.date     "date"
    t.boolean  "active"
    t.text     "note"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "currency_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.boolean  "active"
    t.string   "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "currencies", :force => true do |t|
    t.string   "name"
    t.string   "symbol"
    t.decimal  "exchange_rate"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "active"
  end

  create_table "merchants", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "contact"
    t.text     "address"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "active"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.decimal  "quantity"
    t.integer  "unit_id"
    t.decimal  "rate"
    t.decimal  "amount"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "shopping_id"
  end

  create_table "shoppings", :force => true do |t|
    t.integer  "account_id"
    t.decimal  "amount"
    t.date     "date"
    t.integer  "merchant_id"
    t.string   "bill_number"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "transfers", :force => true do |t|
    t.date     "date"
    t.decimal  "amount"
    t.integer  "from_account_id"
    t.integer  "to_account_id"
    t.text     "note"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "units", :force => true do |t|
    t.string   "symbol"
    t.string   "name"
    t.boolean  "active"
    t.string   "unit_type"
    t.string   "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
