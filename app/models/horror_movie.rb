class HorrorMovie < ApplicationRecord
    belongs_to :user
    has_many :horror_movies_genres
    has_many :genres, through: :horror_movies_genres
end
