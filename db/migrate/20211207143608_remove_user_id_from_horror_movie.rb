class RemoveUserIdFromHorrorMovie < ActiveRecord::Migration[6.1]
  def change
    remove_column :horror_movies, :user_id, :bigint
  end
end
