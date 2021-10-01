class Coffee < ApplicationRecord
    has_many :matches
    has_many :matching_foods, through: :matches, source: :food
    
    belongs_to :continent
end
