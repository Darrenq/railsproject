class Patient < ApplicationRecord
    belongs_to :user
    def self.search(search)
        where("lastname ILIKE ?", "#{search}%")
    end
end
