# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Riley Flynn", username: "rileyflynn", password: "password")
user2 = User.create(name: "Erin Greene", username: "eringreene", password: "password")

genre1 = Genre.create(type: "supernatural horror")
genre2 = Genre.create(type: "mystery")
genre3 = Genre.create(type: "post-apocalyptic")
genre4 = Genre.create(type: "folktale")
genre5 = Genre.create(type: "cult")
genre6 = Genre.create(type: "summer festival")

horror_movie1 = HorrorMovie.create(poster: "https://amc-theatres-res.cloudinary.com/v1594123072/amc-cdn/production/2/movies/44400/44369/Poster/p_800x1200_AMC_Oculus_07052020.jpg",
                title: "Oculus", director: "Mike Flanagan", rating: 5, date_watched: 2021-10-17, user_id: user1.id)
horror_movie2 = HorrorMovie.create(poster: "https://m.media-amazon.com/images/M/MV5BOTU5MDg3OGItZWQ1Ny00ZGVmLTg2YTUtMzBkYzQ1YWIwZjlhXkEyXkFqcGdeQXVyNTAzMTY4MDA@._V1_.jpg",
                title: "Hereditary", director: "Ari Aster", rating: 5, date_watched: 2021-10-16, user_id: user2.id)
horror_movie3 = HorrorMovie.create(poster: "https://amc-theatres-res.cloudinary.com/v1594123072/amc-cdn/production/2/movies/44400/44369/Poster/p_800x1200_AMC_Oculus_07052020.jpg",
                title: "The Witch", director: "Robert Eggers", rating: 5, date_watched: 2020-10-17, user_id: user1.id)
horror_movie4 = HorrorMovie.create(poster: "https://amc-theatres-res.cloudinary.com/v1594123072/amc-cdn/production/2/movies/44400/44369/Poster/p_800x1200_AMC_Oculus_07052020.jpg",
                title: "Midsommar", director: "Ari Aster", rating: 5, date_watched: 202-10-22, user_id: user2.id)

horror_movie_genre1 =  HorrorMovieGenre.create(horror_movie_id: 1, genre_id: genre1.id)
horror_movie_genre2 =  HorrorMovieGenre.create(horror_movie_id: 1, genre_id: genre2.id)
horror_movie_genre3 =  HorrorMovieGenre.create(horror_movie_id: 2, genre_id: genre2.id)
horror_movie_genre4 =  HorrorMovieGenre.create(horror_movie_id: 3, genre_id: genre4.id)
horror_movie_genre5 =  HorrorMovieGenre.create(horror_movie_id: 4, genre_id: genre5.id)
horror_movie_genre6 =  HorrorMovieGenre.create(horror_movie_id: 4, genre_id: genre6.id)


