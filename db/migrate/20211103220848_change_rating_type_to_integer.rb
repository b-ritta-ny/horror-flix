class ChangeRatingTypeToInteger < ActiveRecord::Migration[6.1]
  def change

    def up
      change_column :reviews, :rating, 'integer USING CAST(rating AS integer)'
    end

    def down
      change_column :reviews, :rating, :string
    end
  end
end
