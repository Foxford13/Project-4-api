  class ConversationSerializer < ActiveModel::Serializer
    attributes :id
    has_many :messages, include: :all

  end
