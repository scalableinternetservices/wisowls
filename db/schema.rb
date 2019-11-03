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

ActiveRecord::Schema.define(version: 2019_11_02_235156) do

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "breed"
    t.integer "weight"
    t.boolean "cat_friendly"
    t.boolean "child_friendly"
    t.boolean "playful"
    t.boolean "barker"
    t.boolean "energetic"
    t.boolean "calm"
    t.boolean "friendly"
    t.boolean "likes_small_dogs"
    t.boolean "likes_big_dogs"
    t.boolean "likes_puppies"
    t.boolean "likes_older_dogs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "affectionate"
    t.boolean "cuddly"
    t.boolean "intelligent"
    t.boolean "curious"
    t.boolean "sassy"
    t.boolean "likes_soul_mate"
    t.boolean "likes_younger_dogs"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
