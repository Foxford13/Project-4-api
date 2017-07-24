  class ConversationSerializer < ActiveModel::Serializer
    attributes :id
    belongs_to :user, include: :all
    has_many :messages, include: :all

  end
