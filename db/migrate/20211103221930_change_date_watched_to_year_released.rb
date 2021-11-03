class ChangeDateWatchedToYearReleased < ActiveRecord::Migration[6.1]
  def change
    rename_column :horror_movies, :date_watched, :year_released
  end
end
