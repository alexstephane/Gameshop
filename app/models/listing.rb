class Listing < ApplicationRecord
    belongs_to :console_type
    belongs_to :user
    belongs_to :game
end
 