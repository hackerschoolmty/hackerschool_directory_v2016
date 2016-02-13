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

ActiveRecord::Schema.define(version: 20160213190559) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "generation_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "status"
    t.string   "comment"
  end

  create_table "generations", force: :cascade do |t|
    t.string   "name"
    t.date     "start_date"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "status",     default: "inactive"
  end

  create_table "hackers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "generation_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "github_account"
    t.string   "description"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "hackers", ["email"], name: "index_hackers_on_email", unique: true
  add_index "hackers", ["reset_password_token"], name: "index_hackers_on_reset_password_token", unique: true

  create_table "hackers_languages", id: false, force: :cascade do |t|
    t.integer "hacker_id",   null: false
    t.integer "language_id", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
