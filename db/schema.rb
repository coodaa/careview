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

ActiveRecord::Schema[7.0].define(version: 2022_05_31_102802) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carehomes", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.integer "price_range"
    t.text "description"
    t.string "types"
    t.string "activities"
    t.string "pets_allowed"
    t.string "wifi"
    t.string "lift"
    t.string "wheelchair_access"
    t.string "security"
    t.string "smoke_alarm"
    t.string "tv"
    t.string "parking"
    t.string "hair_salon"
    t.string "sauna"
    t.string "bar"
    t.string "air_conditioning"
    t.string "physiotherapist"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carehomes_on_user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.bigint "carehome_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carehome_id"], name: "index_chatrooms_on_carehome_id"
    t.index ["user_id"], name: "index_chatrooms_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "carehome_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carehome_id"], name: "index_favorites_on_carehome_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.string "rating"
    t.string "food"
    t.string "privacy"
    t.string "staff"
    t.string "hygiene"
    t.string "atmosphere"
    t.bigint "user_id", null: false
    t.bigint "carehome_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carehome_id"], name: "index_reviews_on_carehome_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "carehomes", "users"
  add_foreign_key "chatrooms", "carehomes"
  add_foreign_key "chatrooms", "users"
  add_foreign_key "favorites", "carehomes"
  add_foreign_key "favorites", "users"
  add_foreign_key "reviews", "carehomes"
  add_foreign_key "reviews", "users"
end
