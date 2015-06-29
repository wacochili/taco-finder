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

ActiveRecord::Schema.define(version: 20150628214729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "filling_categories", force: :cascade do |t|
    t.integer  "taco_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "heat_ratings", force: :cascade do |t|
    t.integer  "heat_rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ingredient_fillings", force: :cascade do |t|
    t.string   "meat"
    t.integer  "authenticity"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ingredient_garnishes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredient_salsas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredient_tortillas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tacos", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price",        precision: 8, scale: 2
    t.text     "description"
    t.integer  "taste_rating"
    t.integer  "heat_rating"
    t.integer  "taqueria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taquerias", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taste_ratings", force: :cascade do |t|
    t.integer  "taste_rating"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "user_ratings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "taste_rating"
    t.integer  "heat_rating"
    t.integer  "taco_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

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

end
