class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :stats
end
