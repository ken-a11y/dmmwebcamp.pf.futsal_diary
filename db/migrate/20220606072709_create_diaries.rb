class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|
      t.integer :user_id
      t.string :place
      t.string :result
      t.string :good
      t.string :bad

      t.timestamps
    end
  end
end
