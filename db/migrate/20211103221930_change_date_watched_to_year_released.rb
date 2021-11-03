class ChangeDateWatchedToYearReleased < ActiveRecord::Migration[6.1]
  def change
    rename_column :horror_movie, :date_watched, :year_released
  end
end
