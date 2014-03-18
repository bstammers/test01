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

ActiveRecord::Schema.define(version: 20140318105645) do

  create_table "competitions", force: true do |t|
    t.string   "name"
    t.boolean  "points_percent_flag"
    t.boolean  "sets_percent_flag"
    t.boolean  "mvp_flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "competitions", ["name"], name: "index_competitions_on_name", unique: true

  create_table "divisions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "divisions", ["name"], name: "index_divisions_on_name", unique: true

  create_table "players", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "phone"
    t.string   "avatar"
    t.boolean  "adminflag"
    t.boolean  "managerflag"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "players", ["email"], name: "index_players_on_email", unique: true
  add_index "players", ["remember_token"], name: "index_players_on_remember_token"
  add_index "players", ["username"], name: "index_players_on_username", unique: true

end
