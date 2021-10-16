class CreateHorrorMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :horror_movies do |t|
      t.string :poster
      t.string :title
      t.string :director
      t.integer :rating
      t.date :date_watched
      t.integer :user_id
      t.integer :genre_id

      t.timestamps
    end
  end
end