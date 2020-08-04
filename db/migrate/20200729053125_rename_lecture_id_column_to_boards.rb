class RenameLectureIdColumnToBoards < ActiveRecord::Migration[6.0]
  def change
    rename_column :boards, :lecture_id, :room_id
  end
end
