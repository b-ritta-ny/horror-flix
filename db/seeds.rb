# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Genre.destroy_all
HorrorMovie.destroy_all
HorrorMovieGenre.destroy_all
Review.destroy_all

#user
user1 = User.create(name: "Riley Flynn", username: "rileyflynn", password: "password")
user2 = User.create(name: "Erin Greene", username: "eringreene", password: "password")
user3 = User.create(name: "Paul Hill", username: "paulhill", password: "imnotavampire")

#genre
genre1 = Genre.create(name: "supernatural")
genre2 = Genre.create(name: "mystery")
genre3 = Genre.create(name: "post-apocalyptic")
genre4 = Genre.create(name: "folktale")
genre5 = Genre.create(name: "cult")
genre6 = Genre.create(name: "summer festival")

#horror movie
horror_movie1 = HorrorMovie.create(poster: "https://amc-theatres-res.cloudinary.com/v1594123072/amc-cdn/production/2/movies/44400/44369/Poster/p_800x1200_AMC_Oculus_07052020.jpg",
                title: "Oculus", director: "Mike Flanagan")
horror_movie2 = HorrorMovie.create(poster: "https://m.media-amazon.com/images/M/MV5BOTU5MDg3OGItZWQ1Ny00ZGVmLTg2YTUtMzBkYzQ1YWIwZjlhXkEyXkFqcGdeQXVyNTAzMTY4MDA@._V1_.jpg",
                title: "Hereditary", director: "Ari Aster")
horror_movie3 = HorrorMovie.create(poster: "https://amc-theatres-res.cloudinary.com/v1594123072/amc-cdn/production/2/movies/44400/44369/Poster/p_800x1200_AMC_Oculus_07052020.jpg",
                title: "The Witch", director: "Robert Eggers")
horror_movie4 = HorrorMovie.create(poster: "https://amc-theatres-res.cloudinary.com/v1594123072/amc-cdn/production/2/movies/44400/44369/Poster/p_800x1200_AMC_Oculus_07052020.jpg",
                title: "Midsommar", director: "Ari Aster")

#horror movie genres
h1 = HorrorMovieGenre.create(horror_movie_id: horror_movie1.id, genre_id: genre1.id)
h2 = HorrorMovieGenre.create(horror_movie_id: horror_movie1.id, genre_id: genre3.id)
h3 = HorrorMovieGenre.create(horror_movie_id: horror_movie1.id, genre_id: genre4.id)
h4 = HorrorMovieGenre.create(horror_movie_id: horror_movie1.id, genre_id: genre2.id)

#reviews 
r1 = Review.create(description: "Terrifying!", rating: 3, user_id: user3.id, horror_movie_id: horror_movie1.id)
r2 = Review.create(description: "Scary and original", rating: 5, user_id: user2.id, horror_movie_id: horror_movie1.id)
r3 = Review.create(description: "I was on the edge of my seat", rating: 4, user_id: user1.id, horror_movie_id: horror_movie1.id)

r3 = Review.create(description: "I loved it!", rating: 5, user_id: user3.id, horror_movie_id: horror_movie2.id)
r4 = Review.create(description: "I'd recommend it to everyone.", rating: 4, user_id: user2.id, horror_movie_id: horror_movie2.id)
r6 = Review.create(description: "Super original", rating: 4, user_id: user1.id, horror_movie_id: horror_movie2.id)

