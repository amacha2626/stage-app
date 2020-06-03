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

ActiveRecord::Schema.define(version: 2020_06_03_173726) do

  create_table "reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.bigint "stage_id", null: false
    t.integer "score", null: false
    t.boolean "spoiler", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stage_id"], name: "index_reviews_on_stage_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "stages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.date "startperiod", null: false
    t.date "lastperiod", null: false
    t.string "theater", null: false
    t.string "image"
    t.string "member"
    t.string "writer"
    t.string "director"
    t.integer "lowestprice", null: false
    t.integer "highestprice", null: false
    t.string "website"
    t.text "timetable"
    t.text "explanation", null: false
    t.text "etc"
    t.string "category", null: false
    t.bigint "theatre_company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theatre_company_id"], name: "index_stages_on_theatre_company_id"
  end

  create_table "theatre_companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "image"
    t.integer "postal_code", null: false
    t.string "prefecture", null: false
    t.string "address", null: false
    t.string "website"
    t.integer "establish"
    t.bigint "member_id"
    t.text "profile"
    t.string "contact"
    t.bigint "founder_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["founder_id"], name: "index_theatre_companies_on_founder_id"
    t.index ["member_id"], name: "index_theatre_companies_on_member_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "username", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "image"
    t.text "caption"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "reviews", "stages"
  add_foreign_key "reviews", "users"
  add_foreign_key "stages", "theatre_companies"
  add_foreign_key "theatre_companies", "users", column: "founder_id"
  add_foreign_key "theatre_companies", "users", column: "member_id"
end
