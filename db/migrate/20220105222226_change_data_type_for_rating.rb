class ChangeDataTypeForRating < ActiveRecord::Migration[7.0]
  def change
    change_column :reviews, :rating, 'bigint USING CAST(rating AS bigint)'
  end
end



