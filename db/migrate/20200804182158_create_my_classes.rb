class CreateMyClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :my_classes do |t|
      t.string :course_number
      t.integer :user_id

      t.timestamps
    end
  end
end
