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

ActiveRecord::Schema.define(version: 20170612215742) do

  create_table "civilian_interests", force: :cascade do |t|
    t.integer  "civilian_id"
    t.integer  "interest_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "civilian_interests", ["civilian_id"], name: "index_civilian_interests_on_civilian_id"
  add_index "civilian_interests", ["interest_id"], name: "index_civilian_interests_on_interest_id"

  create_table "civilians", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "civilian_id"
    t.string   "job_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "jobs", ["civilian_id"], name: "index_jobs_on_civilian_id"

  create_table "shoes", force: :cascade do |t|
    t.integer  "civilian_id"
    t.integer  "size"
    t.string   "brand"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "shoes", ["civilian_id"], name: "index_shoes_on_civilian_id"

end
