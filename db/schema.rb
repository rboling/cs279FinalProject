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

ActiveRecord::Schema.define(version: 20131231034215) do

  create_table "conditions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "opinion_left"
    t.integer  "opinion_right"
  end

  create_table "conditions_opinions", id: false, force: true do |t|
    t.integer "condition_id", null: false
    t.integer "opinion_id",   null: false
  end

  create_table "opinions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_left"
  end

  create_table "points", force: true do |t|
    t.text     "body"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "side_id"
  end

  add_index "points", ["side_id"], name: "index_points_on_side_id", using: :btree

  create_table "posts", force: true do |t|
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "condition_id"
  end

  add_index "posts", ["condition_id"], name: "index_posts_on_condition_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "responses", force: true do |t|
    t.integer  "before_information"
    t.integer  "before_leaning"
    t.integer  "after_information"
    t.integer  "after_leaning"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rewards", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "condition_id"
  end

  add_index "rewards", ["condition_id"], name: "index_rewards_on_condition_id", using: :btree

  create_table "risks", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "condition_id"
  end

  add_index "risks", ["condition_id"], name: "index_risks_on_condition_id", using: :btree

  create_table "sides", force: true do |t|
    t.integer  "condition_id"
    t.text     "body"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_left"
    t.boolean  "is_right"
    t.integer  "count",        default: 0
  end

  add_index "sides", ["condition_id"], name: "index_sides_on_condition_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
  end

end
