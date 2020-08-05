class MyClass < ApplicationRecord
    # def self.import(file)
    #   CSV.foreach(file.path, headers: true) do |row|
    #     book = find_by(id: row["id"]) || new
    #     book.attributes = row.to_hash.slice(*updatable_attributes)
    #     book.save!(validate: false)
    #   end
    # end
    #
    # def self.updatable_attributes
    #   ['id', 'title', 'body']
    # end

    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
        user = find_by(id: row["id"]) || new
        # CSVからデータを取得し、設定する
        user.attributes = row.to_hash.slice(*updatable_attributes)

        # ↓追加
        # @post = Post.new(
        #   content: params[:content],
        #   user_id: @current_user.id
        # )
        Post.new(
          content: params[:content],
          user_id: @current_user.id
        )
        # ↑追加ここまで

        # 保存する
        user.save
      end
    end

    # 更新を許可するカラムを定義
    def self.updatable_attributes
      ["id", "course_number", "user_id"]
    end
end
