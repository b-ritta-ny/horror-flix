class CreateHorrorMovieGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :horror_movie_genres do |t|

      t.timestamps
    end
  end
end
