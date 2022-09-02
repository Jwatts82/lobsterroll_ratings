class RollSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :city, :rating
  belongs_to :state
end
