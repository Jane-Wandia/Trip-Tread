class AirlineUserSerializer < ActiveModel::Serializer
  attributes :name, :id
  has_many :users
  
end
