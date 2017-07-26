class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname
  has_many :items
  has_many :conversations_sent
  has_many :conversations_received
  has_many :messages
  has_many :items_watched
end
