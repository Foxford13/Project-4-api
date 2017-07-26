class MessageSerializer < ActiveModel::Serializer
  attributes :id, :body
  belongs_to :conversation
  belongs_to :user


    private
    def message_time
      created_at.strftime("%d/%m/%y at %l:%M %p")
    end
end
