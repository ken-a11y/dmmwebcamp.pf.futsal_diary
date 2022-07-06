class AddScore1ToDiaries < ActiveRecord::Migration[6.1]
  def change
    add_column :diaries, :score1, :decimal, precision: 5, scale: 3
  end
end
