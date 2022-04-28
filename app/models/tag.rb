class Tag < ApplicationRecord
    has_and_belongs_to_many :books, uniq: true

    def self.search(term)
        where("name LIKE ?", "%#{term}%")
    end
end
