class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  attribute :body
    belongs_to :conversation, class_name: "Conversation", foreign_key: "conversation_id"
  private
    def message_time
      created_at.strftime("%d/%m/%y at %l:%M %p")
    end
end
