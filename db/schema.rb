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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140309165504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: true do |t|
    t.integer "user_id"
    t.integer "vendor_id"
    t.string  "zipcode",           limit: 10
    t.string  "address"
    t.string  "city"
    t.string  "country"
    t.string  "first_name"
    t.string  "last_name"
    t.string  "secondary_address"
    t.string  "state"
  end

  create_table "product_types", force: true do |t|
    t.integer "product_id"
    t.string  "description"
  end

  create_table "products", force: true do |t|
    t.integer "vendor_id"
    t.decimal "price",         precision: 8, scale: 2
    t.decimal "shipping_cost", precision: 8, scale: 2
    t.float   "weight"
    t.integer "type"
    t.string  "name"
    t.text    "description"
    t.text    "tasting_notes"
  end

  create_table "products_transactions", force: true do |t|
    t.integer "transaction_id"
    t.integer "product_id"
    t.integer "quantity"
  end

  create_table "transaction_states", force: true do |t|
    t.integer "transaction_id"
    t.string  "description"
  end

  create_table "transactions", force: true do |t|
    t.integer "user_id"
    t.decimal "price",    precision: 8, scale: 2
    t.integer "state_id",                         null: false
  end

  create_table "user_types", force: true do |t|
    t.integer "user_id"
    t.string  "description"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "type_id",                default: 0
    t.boolean  "subscribed",             default: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  create_table "vendors", force: true do |t|
    t.string "url"
  end

end
