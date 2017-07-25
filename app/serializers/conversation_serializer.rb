class ConversationSerializer < ActiveModel::Serializer
  attributes :id
  has_many :messages
  belongs_to :sender
  belongs_to :receiver
  # belongs_to :user


end
