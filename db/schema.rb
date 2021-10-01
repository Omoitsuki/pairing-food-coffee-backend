# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_01_095427) do

  create_table "coffees", force: :cascade do |t|
    t.integer "continent_id"
    t.string "name"
    t.text "discription"
    t.float "bitter"
    t.float "sour"
    t.float "rich"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["continent_id"], name: "index_coffees_on_continent_id"
  end

  create_table "continents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.text "discription"
    t.float "taste"
    t.float "sweet"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "coffee_id"
    t.integer "food_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coffee_id"], name: "index_matches_on_coffee_id"
    t.index ["food_id"], name: "index_matches_on_food_id"
  end

  add_foreign_key "coffees", "continents"
  add_foreign_key "matches", "coffees"
  add_foreign_key "matches", "foods"
end
