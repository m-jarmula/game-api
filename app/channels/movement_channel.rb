class MovementChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'movement_channel'
  end

  def receive(data)
    ActionCable.server.broadcast('movement_channel', data.fetch('message'))
  end

  def save(data)
    current_user.player.update(x: '%.7f' % data.fetch('message')['x'],
                               y: '%.7f' % data.fetch('message')['y'])
  end
end
