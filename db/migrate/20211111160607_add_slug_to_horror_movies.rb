class AddSlugToHorrorMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :horror_movies, :slug, :string
  end
end
