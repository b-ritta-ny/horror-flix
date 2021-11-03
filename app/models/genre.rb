class Genre < ApplicationRecord
    has_many :horror_movie_genres
    has_many :horror_movies, through: :horror_movie_genres

    validates :name, presence: true
end
