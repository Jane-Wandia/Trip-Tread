class User < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :airlines, through: :reviews
    has_secure_password
end
