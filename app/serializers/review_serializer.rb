class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :trip, :review
  belongs_to :user
  belongs_to :airline
 
end
