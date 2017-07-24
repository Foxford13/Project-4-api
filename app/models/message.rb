class Message < ApplicationRecord
  attribute :body
  belongs_to :user
  belongs_to :conversation
  validates_presence_of :body, :conversation_id, :user_id
  private
  def message_time
    created_at.strftime("%d/%m/%y at %l:%M %p")
  end
end
