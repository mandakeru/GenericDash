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

ActiveRecord::Schema.define(version: 20160829131454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "cpf"
    t.integer  "gender"
    t.date     "birthdate"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "street"
    t.integer  "number"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "customers", ["cpf"], name: "index_customers_on_cpf", using: :btree
  add_index "customers", ["id"], name: "index_customers_on_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category"
    t.decimal  "price"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["id"], name: "index_products_on_id", using: :btree
  add_index "products", ["name"], name: "index_products_on_name", using: :btree

  create_table "transactions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "category"
    t.integer  "customer_id"
    t.integer  "product_id"
    t.decimal  "total_price"
    t.decimal  "price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "product_quantity"
    t.string   "month"
  end

  add_index "transactions", ["customer_id"], name: "index_transactions_on_customer_id", using: :btree
  add_index "transactions", ["product_id"], name: "index_transactions_on_product_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "transactions", "customers"
  add_foreign_key "transactions", "products"
end
