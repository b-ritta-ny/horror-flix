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

ActiveRecord::Schema.define(version: 2021_10_17_180637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "horror_movie_genres", force: :cascade do |t|
    t.bigint "horror_movies_id"
    t.bigint "genres_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genres_id"], name: "index_horror_movie_genres_on_genres_id"
    t.index ["horror_movies_id"], name: "index_horror_movie_genres_on_horror_movies_id"
  end

  create_table "horror_movies", force: :cascade do |t|
    t.string "poster"
    t.string "title"
    t.string "director"
    t.integer "rating"
    t.date "date_watched"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_horror_movies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "horror_movie_genres", "genres", column: "genres_id"
  add_foreign_key "horror_movie_genres", "horror_movies", column: "horror_movies_id"
  add_foreign_key "horror_movies", "users"
end
