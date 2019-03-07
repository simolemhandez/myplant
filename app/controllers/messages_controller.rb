class MessagesController < ApplicationController
  def index
    @messages = policy_scope(Message).where(user: current_user)
    @other_messages = Message.received_by(current_user)
  end

  def new
    @plant = Plant.find(params[:plant_id])
    @message = Message.new
    authorize @message
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @message = Message.new(message_params)
    @message.plant = @plant
    @message.user = current_user
    authorize @message
    if @message.save
      redirect_to messages_path
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:id, :content, :user, :plant)
  end
end
