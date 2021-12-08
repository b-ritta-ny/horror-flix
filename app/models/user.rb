class User < ApplicationRecord
    has_secure_password

    has_many :reviews
    has_many :horror_movies, through: :reviews, dependent: :destroy

    validates :name, :password, :username, presence: true
end
