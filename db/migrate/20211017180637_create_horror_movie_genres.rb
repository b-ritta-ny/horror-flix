class CreateHorrorMovieGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :horror_movie_genres do |t|
      t.belongs_to :horror_movies, foreign_key: true
      t.belongs_to :genres, foreign_key: true

      t.timestamps
    end
  end
end
