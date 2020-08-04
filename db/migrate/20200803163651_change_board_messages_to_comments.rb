class ChangeBoardMessagesToComments < ActiveRecord::Migration[6.0]
  def change
    rename_table :board_messages, :comments 
  end
end
