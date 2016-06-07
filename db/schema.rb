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

ActiveRecord::Schema.define(version: 20160606013113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adresses", force: :cascade do |t|
    t.string   "street"
    t.string   "postal_code"
    t.string   "city"
    t.string   "category"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "adverts", force: :cascade do |t|
    t.string   "type"
    t.string   "label"
    t.text     "informations"
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "adress_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "category"
    t.datetime "expiration_date"
    t.integer  "quantity"
    t.integer  "product_id"
    t.integer  "beneficiary_id"
    t.boolean  "is_reserved"
    t.boolean  "is_given"
    t.string   "size"
  end

  add_index "adverts", ["adress_id"], name: "index_adverts_on_adress_id", using: :btree
  add_index "adverts", ["beneficiary_id"], name: "index_adverts_on_beneficiary_id", using: :btree
  add_index "adverts", ["product_id"], name: "index_adverts_on_product_id", using: :btree

  create_table "availabilities", force: :cascade do |t|
    t.string   "day"
    t.string   "part_of_day"
    t.integer  "begin",                    array: true
    t.integer  "end",                      array: true
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "category"
    t.string   "label"
    t.text     "informations"
    t.integer  "limit_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "timeslots", force: :cascade do |t|
    t.string   "owner_type"
    t.integer  "owner_id"
    t.integer  "availability_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "type",                               null: false
    t.string   "username"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "birth_date"
    t.integer  "limit_reservations"
    t.string   "mail"
    t.string   "public_name"
    t.string   "specific_name"
    t.boolean  "is_closed"
    t.integer  "limit_ads"
    t.integer  "limit_stock"
    t.boolean  "has_fridge",         default: false
    t.integer  "limit_fridge"
    t.boolean  "is_association"
  end

end
