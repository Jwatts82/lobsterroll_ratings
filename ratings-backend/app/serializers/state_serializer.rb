class StateSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :rolls
end
