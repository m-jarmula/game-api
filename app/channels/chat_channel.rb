class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_channel'
  end

  def receive(data)
    Message.create(player: current_user.player, message: data.fetch('message')['message'])
    ActionCable.server.broadcast('chat_channel', data.fetch('message'))
  end
end
