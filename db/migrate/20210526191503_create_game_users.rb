class CreateGameUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :game_users do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :rank_id

      t.timestamps
    end
  end
end
