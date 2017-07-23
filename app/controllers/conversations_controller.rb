class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    # @users = User.where.not(id: current_user.id)
    # @conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
    @users = User.all
@conversations = Conversation.all

  end
  # you will need to adjust it as same people can have multiple convos about a different item
  def create
    if Conversation.between(params[:sender_id], params[:receiver_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:receiver_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end

    redirect_to conversation_messages_path(@conversation)
  end

  private
    def conversation_params
      params.permit(:sender_id, :receiver_id, :item_id)
    end
end