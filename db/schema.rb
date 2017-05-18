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

ActiveRecord::Schema.define(version: 20170415033740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cashes", force: :cascade do |t|
    t.string   "total"
    t.datetime "date_open"
    t.datetime "date_close"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_cashes_on_user_id", using: :btree
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "client"
    t.integer  "products"
    t.integer  "services"
    t.decimal  "total"
    t.boolean  "credit"
    t.integer  "code"
    t.string   "seller"
    t.datetime "date_open"
    t.datetime "date_charged"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_invoices_on_user_id", using: :btree
  end

  create_table "sales", force: :cascade do |t|
    t.string   "product"
    t.decimal  "price"
    t.decimal  "quantity"
    t.string   "seller"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_sales_on_user_id", using: :btree
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.integer  "quantity"
    t.string   "seller"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "client"
    t.index ["user_id"], name: "index_services_on_user_id", using: :btree
  end

  create_table "summaries", force: :cascade do |t|
    t.integer  "sales"
    t.integer  "services"
    t.decimal  "cash"
    t.integer  "unpaid_bills"
    t.integer  "bills_paid"
    t.integer  "employees"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_summaries_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "organization"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "api_key"
  end

end
