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
end
