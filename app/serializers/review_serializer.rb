class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :trip, :review, :rating
  belongs_to :user
  belongs_to :airline
 
end
