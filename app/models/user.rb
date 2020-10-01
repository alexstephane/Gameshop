class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true, uniqueness: true
    has_many :listings
    has_many :games, through: :listings
    has_many :console_types, through: :listings
    
    
end
