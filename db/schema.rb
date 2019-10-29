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

ActiveRecord::Schema.define(version: 2019_10_25_231529) do

  create_table "request_311s", force: :cascade do |t|
    t.string "ward"
    t.string "neighbourhood"
    t.integer "service_name_id", null: false
    t.integer "service_area_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_area_id"], name: "index_request_311s_on_service_area_id"
    t.index ["service_name_id"], name: "index_request_311s_on_service_name_id"
  end

  create_table "service_areas", force: :cascade do |t|
    t.integer "service_id"
    t.string "service_area"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_names", force: :cascade do |t|
    t.string "service_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "request_311s", "service_areas"
  add_foreign_key "request_311s", "service_names"
end
