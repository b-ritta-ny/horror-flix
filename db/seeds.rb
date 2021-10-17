# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Riley Flynn", username: "rileyflynn", password: "password")
user2 = User.create(name: "Erin Greene", username: "eringreene", password: "password")

horror_movie1 = HorrorMovie.create(poster: "https://amc-theatres-res.cloudinary.com/v1594123072/amc-cdn/production/2/movies/44400/44369/Poster/p_800x1200_AMC_Oculus_07052020.jpg",
title: "Oculus", director: "Mike Flanagan", rating: 5, date_watched: 2021-10-17)


create_table "horror_movies", force: :cascade do |t|
    t.string "poster"
    t.string "title"
    t.string "director"
    t.integer "rating"
    t.date "date_watched"
    t.integer "user_id"
    t.integer "genre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
