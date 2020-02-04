# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_04_184349) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "city_weathers", force: :cascade do |t|
    t.string "summary"
    t.float "temperature"
    t.float "windgust"
    t.float "windspeed"
    t.string "daily_summary"
    t.string "alert"
    t.text "alert_description"
    t.integer "city_id", null: false
    t.integer "weather_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_city_weathers_on_city_id"
    t.index ["weather_id"], name: "index_city_weathers_on_weather_id"
  end

  create_table "weathers", force: :cascade do |t|
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "city_weathers", "cities"
  add_foreign_key "city_weathers", "weathers"
end
