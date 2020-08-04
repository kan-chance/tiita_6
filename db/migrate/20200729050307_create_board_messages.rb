class CreateBoardMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :board_messages do |t|
      t.text :body
      t.integer :user_id
      t.integer :board_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
