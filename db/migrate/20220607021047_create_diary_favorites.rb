class CreateDiaryFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :diary_favorites do |t|
      t.integer :user_id
      t.integer :diary_id
      t.timestamps
    end
  end
end
