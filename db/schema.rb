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

ActiveRecord::Schema.define(version: 2020_10_16_163507) do

  create_table "attendees", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "hometown"
    t.integer "event_id", null: false
    t.integer "location_id", null: false
    t.index ["event_id"], name: "index_attendees_on_event_id"
    t.index ["location_id"], name: "index_attendees_on_location_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "event_date"
    t.string "event_type"
    t.boolean "tickets"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "country"
  end

  add_foreign_key "attendees", "events"
  add_foreign_key "attendees", "locations"
end
