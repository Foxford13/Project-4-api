class MessagesController < ApplicationController
  before_action :authenticate_user!

  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.messages

    if @messages.last && @messages.last.user_id != current_user.id
      @messages.last.update(read: true)
    end

    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)

    if @message.save
      redirect_to conversation_messages_path(@conversation)
    end
  end

  private
    def message_params
      # params.permit(:body, :user_id, :conversation_id)
      params.require(:message).permit(:body, :user_id)
    end
end