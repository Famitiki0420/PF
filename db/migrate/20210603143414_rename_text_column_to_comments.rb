class RenameTextColumnToComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :user_id, :commenter_id
    rename_column :comments, :game_id, :commented_id
    rename_column :comments, :text, :comment
  end
end
