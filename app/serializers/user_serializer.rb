class UserSerializer < ActiveModel::Serializer
      attributes :id, :username, :firstname, :lastname
      has_many :items_created

end
