class CreateTacticTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tactic_tags do |t|
      t.integer :diary_id
      t.integer :tag_id
      
      t.timestamps
    end
  end
end
