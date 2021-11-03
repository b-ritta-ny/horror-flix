class CreateHorrorMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :horror_movies do |t|
      t.string :poster
      t.string :title
      t.string :director
      t.date :date_watched
      t.belongs_to :user, foreign_key: true
     
      t.timestamps
    end
  end
end
