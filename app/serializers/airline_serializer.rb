class AirlineSerializer < ActiveModel::Serializer
  attributes :name, :id, :image
  # has_many :users
end
