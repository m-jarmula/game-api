class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'game_channel'
  end

  def receive(data)
    binding.pry
    ActionCable.server.broadcast('game_channel', data.fetch('message'))
  end
end
