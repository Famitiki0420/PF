class CreateRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :ranks do |t|
      t.string :rank_name
      t.integer :rank_order
      t.boolean :rank_default
      t.integer :game_id

      t.timestamps
    end
  end
end
