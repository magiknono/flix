class Movie < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true, length: { minimum: 4 }

    def flop?
      total_gross.blank? || total_gross < 225_000_000
    end
end
