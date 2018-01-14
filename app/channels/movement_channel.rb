class MovementChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'movement_channel'
  end

  def receive(data)
    ActionCable.server.broadcast('movement_channel', data.fetch('message'))
  end
end
