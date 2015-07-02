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

ActiveRecord::Schema.define(version: 20150702032850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.integer  "codigo"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.integer  "codigo"
    t.string   "titulo"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "great_areas", force: :cascade do |t|
    t.integer  "codigo"
    t.string   "titulo"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutes", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "number"
    t.string   "district"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip_code"
    t.string   "phone"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "institutes", ["person_id"], name: "index_institutes_on_person_id", using: :btree
  add_index "institutes", ["state_id"], name: "index_institutes_on_state_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "lattes"
    t.string   "phone"
    t.string   "mobile_phone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_areas", force: :cascade do |t|
    t.integer  "codigo"
    t.string   "descricao"
    t.integer  "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sub_areas", ["area_id"], name: "index_sub_areas_on_area_id", using: :btree

  add_foreign_key "institutes", "people"
  add_foreign_key "institutes", "states"
  add_foreign_key "sub_areas", "areas"
end
