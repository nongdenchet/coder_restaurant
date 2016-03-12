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

ActiveRecord::Schema.define(version: 20160312112753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coupons", force: :cascade do |t|
    t.string   "name"
    t.decimal  "percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_orders", force: :cascade do |t|
    t.integer  "quantity"
    t.integer  "order_id"
    t.integer  "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "food_orders", ["food_id"], name: "index_food_orders_on_food_id", using: :btree
  add_index "food_orders", ["order_id"], name: "index_food_orders_on_order_id", using: :btree

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.string   "section"
    t.string   "image_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "cuisine"
    t.integer  "views_count"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "username"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.decimal  "total_money"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "username"
    t.text     "comment"
    t.integer  "food_id"
    t.integer  "star",       default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "reviews", ["food_id"], name: "index_reviews_on_food_id", using: :btree

  create_table "sort_options", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "food_orders", "foods"
  add_foreign_key "food_orders", "orders"
  add_foreign_key "reviews", "foods"
end
