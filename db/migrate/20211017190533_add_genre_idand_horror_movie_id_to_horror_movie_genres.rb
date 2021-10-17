class AddGenreIdandHorrorMovieIdToHorrorMovieGenres < ActiveRecord::Migration[6.1]
  def change
    add_column :horror_movie_genres, :genre_id, :integer
    add_column :horror_movie_genres, :horror_movie_id, :integer
  end
end
