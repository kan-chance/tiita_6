class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :lecture_id

      t.timestamps
    end
  end
end
