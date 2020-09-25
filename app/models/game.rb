class Game < ApplicationRecord
    has_many :listings
    has_many :users, through: :listings
    has_many :console_types, through: :listings
end
