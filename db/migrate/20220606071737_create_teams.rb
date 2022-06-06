class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :owner_id
      t.text :introduction

      t.timestamps
    end
  end
end
