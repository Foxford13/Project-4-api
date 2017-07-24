class UserSerializer < ActiveModel::Serializer
      attributes :id, :username, :firstname, :lastname
      has_many :items
      has_many :conversations_sent
      has_many :conversations_received
end
