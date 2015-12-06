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

ActiveRecord::Schema.define(version: 20151206022345) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favorites", ["route_id"], name: "index_favorites_on_route_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

  create_table "images", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "coordinates"
    t.string   "radius"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "outings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "outings", ["route_id"], name: "index_outings_on_route_id"
  add_index "outings", ["user_id"], name: "index_outings_on_user_id"

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

  create_table "ratings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "route_id"
    t.float    "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ratings", ["route_id"], name: "index_ratings_on_route_id"
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "route_places", force: :cascade do |t|
    t.integer  "route_id"
    t.integer  "place_id"
    t.integer  "place_position"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "route_places", ["place_id"], name: "index_route_places_on_place_id"
  add_index "route_places", ["route_id"], name: "index_route_places_on_route_id"

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
    t.string   "email"
  end

end
