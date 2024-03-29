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

ActiveRecord::Schema.define(version: 20150129095610) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "flickr_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "link"
    t.string   "thumb"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "flickr_id"
    t.string   "url_z"
    t.string   "url_m"
    t.string   "url_o"
    t.string   "country"
  end

  add_index "photos", ["category_id"], name: "index_photos_on_category_id", using: :btree
  add_index "photos", ["flickr_id"], name: "index_photos_on_flickr_id", using: :btree

  add_foreign_key "photos", "categories"
end
