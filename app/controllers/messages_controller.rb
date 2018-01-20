class MessagesController < ApplicationController
  def index
    messages = Message.includes(:player).limit(20).map do |message|
      {
        player_name: message.player.name,
        message: message.message
      }
    end

    render json: messages
  end
end
