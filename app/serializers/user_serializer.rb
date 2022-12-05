class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname
  has_many :reviews
end
