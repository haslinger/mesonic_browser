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

ActiveRecord::Schema.define(version: 20140309125232) do

  create_table "mesoniccolumns", force: true do |t|
    t.integer  "c000"
    t.string   "c001"
    t.string   "c002"
    t.string   "c003"
    t.integer  "c050"
    t.integer  "c051"
    t.integer  "c052"
    t.integer  "c053"
    t.integer  "c054"
    t.integer  "c055"
    t.integer  "c056"
    t.integer  "c057"
    t.integer  "c058"
    t.integer  "c059"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mesonictables", force: true do |t|
    t.integer  "c000"
    t.string   "c001"
    t.string   "c002"
    t.string   "c003"
    t.integer  "c050"
    t.integer  "c051"
    t.integer  "c052"
    t.integer  "c053"
    t.integer  "c054"
    t.integer  "c055"
    t.integer  "c056"
    t.integer  "c057"
    t.integer  "c058"
    t.integer  "c059"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "crypted_password",          limit: 40
    t.string   "salt",                      limit: 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                default: "active"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], name: "index_users_on_state"

end
