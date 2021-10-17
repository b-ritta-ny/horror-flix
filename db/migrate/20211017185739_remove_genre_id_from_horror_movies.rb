class RemoveGenreIdFromHorrorMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :horror_movies, :genre_id
  end
end
