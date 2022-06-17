class CreateTactics < ActiveRecord::Migration[6.1]
  def change
    create_table :tactics do |t|
      t.string :description

      t.timestamps
    end
  end
end