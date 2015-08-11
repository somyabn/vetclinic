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

ActiveRecord::Schema.define(version: 20150811163551) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "DateOfVisit"
    t.integer  "pet_id"
    t.integer  "customer_id"
    t.text     "reasonForVisit"
    t.integer  "docter_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "customers", force: :cascade do |t|
    t.text     "name"
    t.integer  "docter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
    t.string   "password"
  end

  create_table "docters", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.text     "school"
    t.datetime "yip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "pet_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "breed"
    t.float    "age"
    t.float    "weight"
    t.datetime "dateOfLastVisit"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "customer_id"
  end

  add_index "pets", ["customer_id"], name: "index_pets_on_customer_id"

end
