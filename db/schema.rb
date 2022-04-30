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

ActiveRecord::Schema.define(version: 2022_04_30_135023) do

  create_table "announcements", force: :cascade do |t|
    t.integer "user_id"
    t.integer "car_id"
    t.string "purpose"
    t.string "location"
    t.integer "rating"
    t.integer "ban", default: 0
    t.boolean "hot_sale"
    t.boolean "visibility", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_announcements_on_car_id"
    t.index ["location"], name: "index_announcements_on_location"
    t.index ["purpose"], name: "index_announcements_on_purpose"
    t.index ["user_id"], name: "index_announcements_on_user_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.integer "age"
    t.string "engine"
    t.string "color"
    t.string "vehicle_type"
    t.string "condition"
    t.string "description"
    t.string "image"
    t.string "video"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["age"], name: "index_cars_on_age"
    t.index ["brand"], name: "index_cars_on_brand"
    t.index ["engine"], name: "index_cars_on_engine"
    t.index ["model"], name: "index_cars_on_model"
    t.index ["vehicle_type"], name: "index_cars_on_vehicle_type"
  end

  create_table "news", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "body"
    t.integer "postable_id"
    t.string "postable_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "telephone"
    t.boolean "status"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["name"], name: "index_users_on_name"
  end

end
