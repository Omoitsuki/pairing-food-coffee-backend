class Continent < ApplicationRecord
    has_one_attached :image
    
    has_many :coffees
end
