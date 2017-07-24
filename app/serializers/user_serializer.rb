class UserSerializer < ActiveModel::Serializer
      attributes :id, :username, :firstname, :lastname
      has_many :items
      has_many :conversations_send
      has_many :conversations_received
end
