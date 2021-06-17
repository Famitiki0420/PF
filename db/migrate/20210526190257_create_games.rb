class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :game_title
      t.string :game_image_id
      t.text :game_introduction

      t.timestamps
    end
  end
end
