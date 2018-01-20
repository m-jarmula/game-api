class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'game_channel'
    user_joined_channel
  end

  def unsubscribed
    deactivate_user
    send_left_info
  end

  def user_left(data)
    save_user_position(data)
    deactivate_user
    send_left_info
  end

  private

  def deactivate_user
    current_user.player.update(active: false)
  end

  def send_left_info
    ActionCable.server.broadcast(
      'game_channel',
      user_id: current_user.id,
      method: 'user_left'
    )
  end

  def save_user_position(data)
    current_user.player.update(x: data.fetch('message')['x'],
                               y: data.fetch('message')['y'])
  end

  def user_joined_channel
    player = current_user.player
    ActionCable.server.broadcast(
      'game_channel',
      player: PlayerSerializer.new(current_user, player).to_api,
      method: 'user_joined'
    )
    player.update(active: true)
  end
end
