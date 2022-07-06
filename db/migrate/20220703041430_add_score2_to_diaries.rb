class AddScore2ToDiaries < ActiveRecord::Migration[6.1]
  def change
    add_column :diaries, :score2, :decimal, precision: 5, scale: 3
  end
end
