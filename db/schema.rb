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

ActiveRecord::Schema.define(version: 20150722134116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "description"
    t.integer  "responsible_id"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "situation",      default: 0
    t.integer  "percent_run"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "project_id"
  end

  add_index "activities", ["project_id"], name: "index_activities_on_project_id", using: :btree
  add_index "activities", ["responsible_id"], name: "index_activities_on_responsible_id", using: :btree
  add_index "activities", ["situation"], name: "index_activities_on_situation", using: :btree

  create_table "areas", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "great_area_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "code_capes"
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
    t.string   "code_capes"
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

  create_table "project_participants", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "person_id"
    t.integer  "role",        default: 0
    t.integer  "weekly_time"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "project_participants", ["role"], name: "index_project_participants_on_role", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.integer  "department_id"
    t.date     "date_start"
    t.date     "date_end"
    t.string   "keywords"
    t.string   "email"
    t.integer  "category_id"
    t.integer  "great_area_id"
    t.integer  "area_id"
    t.integer  "sub_area_id"
    t.integer  "speciality_id"
    t.integer  "research_group_id"
    t.string   "short_description"
    t.string   "introduction"
    t.string   "gols"
    t.string   "methodology"
    t.string   "references"
    t.integer  "financial_institution_id"
    t.integer  "nature_financing_id"
    t.date     "date_start_financing"
    t.date     "date_end_financing"
    t.string   "description_estimate"
    t.string   "value_estimate"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "research_groups", force: :cascade do |t|
    t.string   "title"
    t.integer  "leader_id"
    t.integer  "vice_leader_id"
    t.integer  "area_id"
    t.integer  "sub_area_id"
    t.date     "date_update"
    t.string   "description"
    t.string   "justification"
    t.string   "institutions"
    t.string   "infraestructure"
    t.string   "laboratories"
    t.integer  "status",          default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "research_groups", ["leader_id"], name: "index_research_groups_on_leader_id", using: :btree
  add_index "research_groups", ["status"], name: "index_research_groups_on_status", using: :btree
  add_index "research_groups", ["vice_leader_id"], name: "index_research_groups_on_vice_leader_id", using: :btree

  create_table "specialities", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "sub_area_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "code_capes"
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
    t.string   "code_capes"
  end

  add_index "sub_areas", ["area_id"], name: "index_sub_areas_on_area_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "person_id"
  end

  add_index "users", ["person_id"], name: "index_users_on_person_id", using: :btree

  add_foreign_key "activities", "projects"
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
  add_foreign_key "users", "people"
end
