class ConsoleType < ApplicationRecord

   has_many :listings
   has_many :users, through: :listings
   has_many :games, through: :listings
end
