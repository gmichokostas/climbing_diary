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

ActiveRecord::Schema.define(version: 20150315111020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string   "area_name"
    t.integer  "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "areas", ["route_id"], name: "index_areas_on_route_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "country_name"
    t.integer  "route_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "countries", ["route_id"], name: "index_countries_on_route_id", using: :btree

  create_table "crags", force: :cascade do |t|
    t.string   "crag_name"
    t.integer  "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "crags", ["route_id"], name: "index_crags_on_route_id", using: :btree

  create_table "routes", force: :cascade do |t|
    t.string   "route_name"
    t.string   "route_grade"
    t.text     "description"
    t.datetime "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "areas", "routes", on_delete: :cascade
  add_foreign_key "countries", "routes", on_delete: :cascade
  add_foreign_key "crags", "routes", on_delete: :cascade
end
