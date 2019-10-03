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

ActiveRecord::Schema.define(version: 2019_09_29_202500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "captains_logs", force: :cascade do |t|
    t.bigint "personnel_id", null: false
    t.string "star_date", null: false
    t.string "message", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personnel_id"], name: "index_captains_logs_on_personnel_id"
  end

  create_table "occupations", force: :cascade do |t|
    t.bigint "personnel_id", null: false
    t.string "title", null: false
    t.string "start_date", null: false
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personnel_id"], name: "index_occupations_on_personnel_id"
  end

  create_table "personnel_statuses", force: :cascade do |t|
    t.bigint "personnel_id", null: false
    t.string "title", null: false
    t.string "start_date", null: false
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personnel_id"], name: "index_personnel_statuses_on_personnel_id"
  end

  create_table "personnels", force: :cascade do |t|
    t.string "name", null: false
    t.string "gender"
    t.string "species", null: false
    t.string "affiliation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.bigint "personnel_id", null: false
    t.string "title", null: false
    t.string "start_date", null: false
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "weight", null: false
    t.index ["personnel_id"], name: "index_ranks_on_personnel_id"
  end

  create_table "starship_operator_histories", force: :cascade do |t|
    t.bigint "starship_id", null: false
    t.string "title", null: false
    t.string "start_date", null: false
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["starship_id"], name: "index_starship_operator_histories_on_starship_id"
  end

  create_table "starship_owner_histories", force: :cascade do |t|
    t.bigint "starship_id", null: false
    t.string "title", null: false
    t.string "start_date", null: false
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["starship_id"], name: "index_starship_owner_histories_on_starship_id"
  end

  create_table "starship_rosters", force: :cascade do |t|
    t.bigint "starship_id", null: false
    t.bigint "personnel_id", null: false
    t.string "start_date", null: false
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reason"
    t.index ["personnel_id"], name: "index_starship_rosters_on_personnel_id"
    t.index ["starship_id"], name: "index_starship_rosters_on_starship_id"
  end

  create_table "starship_statuses", force: :cascade do |t|
    t.bigint "starship_id", null: false
    t.string "title", null: false
    t.string "start_date", null: false
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["starship_id"], name: "index_starship_statuses_on_starship_id"
  end

  create_table "starships", force: :cascade do |t|
    t.string "name", null: false
    t.string "class_name", null: false
    t.string "registry", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "personnel_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["personnel_id"], name: "index_users_on_personnel_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
