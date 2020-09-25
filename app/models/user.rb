class User < ApplicationRecord
    has_many :listings
    has_many :games, through: :listings
    
end
