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

ActiveRecord::Schema.define(version: 20150721120000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "great_area_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "areas", ["great_area_id"], name: "index_areas_on_great_area_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "institute_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "categories", ["institute_id"], name: "index_categories_on_institute_id", using: :btree

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.integer  "institute_id"
    t.integer  "person_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "departments", ["institute_id"], name: "index_departments_on_institute_id", using: :btree
  add_index "departments", ["person_id"], name: "index_departments_on_person_id", using: :btree

  create_table "financial_institutions", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "number"
    t.string   "district"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip_code"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "financial_institutions", ["person_id"], name: "index_financial_institutions_on_person_id", using: :btree
  add_index "financial_institutions", ["state_id"], name: "index_financial_institutions_on_state_id", using: :btree

  create_table "great_areas", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

  create_table "nature_financings", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "institute_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "nature_financings", ["institute_id"], name: "index_nature_financings_on_institute_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "lattes"
    t.string   "phone"
    t.string   "mobile_phone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "specialities", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "sub_area_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "specialities", ["sub_area_id"], name: "index_specialities_on_sub_area_id", using: :btree

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_areas", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "area_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sub_areas", ["area_id"], name: "index_sub_areas_on_area_id", using: :btree

  add_foreign_key "areas", "great_areas"
  add_foreign_key "categories", "institutes"
  add_foreign_key "departments", "institutes"
  add_foreign_key "departments", "people"
  add_foreign_key "financial_institutions", "people"
  add_foreign_key "financial_institutions", "states"
  add_foreign_key "institutes", "people"
  add_foreign_key "institutes", "states"
  add_foreign_key "nature_financings", "institutes"
  add_foreign_key "specialities", "sub_areas"
  add_foreign_key "sub_areas", "areas"
end
