class Genre < ApplicationRecord
    has_many :horror_movie_genres
    has_many :horror_movies, through: :horror_movie_genres, dependent: :destroy

    validates :name, presence: true
end
