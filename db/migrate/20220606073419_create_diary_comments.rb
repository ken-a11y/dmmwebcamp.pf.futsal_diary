class CreateDiaryComments < ActiveRecord::Migration[6.1]
  def change
    create_table :diary_comments do |t|
      t.integer :user_id
      t.integer :diary_id
      t.text :comment

      t.timestamps
    end
  end
end
