class MovementChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'game_channel'
  end

  # def receive(data)
  #   ActionCable.server.broadcast('game_channel', data.fetch('message'))
  # end

  def game_state(data)
    ActionCable.server.broadcast('game_channel', data.fetch('message'))
  end
end
