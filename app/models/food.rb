class Food < ApplicationRecord
    has_one_attached :image
    
    has_many :matches
    has_many :matching_coffees, through: :matches, source: :coffee
end
