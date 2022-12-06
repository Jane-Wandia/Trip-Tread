class Review < ApplicationRecord
    belongs_to :user
    belongs_to :airline
    validates :rating, numericality: {less_then: 6} 
end
