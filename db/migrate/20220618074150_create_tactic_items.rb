class CreateTacticItems < ActiveRecord::Migration[6.1]
  def change
    create_table :tactic_items do |t|
      t.string :description
      t.integer :tactic_id
      
      t.timestamps
    end
  end
end
