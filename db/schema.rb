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

ActiveRecord::Schema.define(version: 2019_02_04_045309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "concourses", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.date "initDate"
    t.date "endDate"
    t.string "description"
    t.string "comment"
    t.string "winner"
    t.float "prize"
    t.bigint "administrator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_id"], name: "index_concourses_on_administrator_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "observations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voices", force: :cascade do |t|
    t.string "mp3Voice"
    t.string "uploadVoice"
    t.bigint "concourses_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concourses_id"], name: "index_voices_on_concourses_id"
  end

end
