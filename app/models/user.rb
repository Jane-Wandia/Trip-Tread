class User < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :airlines, through: :reviews
end
