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

ActiveRecord::Schema.define(version: 20151202231852) do

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "full_description"
    t.string   "geo_location"
    t.string   "location"
    t.string   "address"
    t.string   "image_url"
    t.string   "coordinates"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string   "title"
    t.string   "location"
    t.string   "full_description"
    t.string   "image_url"
    t.float    "rating"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "routes", ["user_id"], name: "index_routes_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "location"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_image_url"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
