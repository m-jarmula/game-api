class MovementChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'movement_channel'
  end

  def receive(data)
    ActionCable.server.broadcast('movement_channel', data.fetch('message'))
    add_worker(current_user.id, x: data.fetch('message')['x'], y: data.fetch('message')['y'])
  end

  private

  def add_worker(user_id, position)
    Resque.enqueue(Channels::GameChannel::SaveMovePosition, user_id, position)
  end
end
