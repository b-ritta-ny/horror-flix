class User < ApplicationRecord
    has_secure_password
    has_many :horror_movies, dependent: :delete_all

end
