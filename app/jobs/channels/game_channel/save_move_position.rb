module Channels
  module GameChannel
    class SaveMovePosition
      @queue = :movement_position

      def self.perform(user_id, position)
        player = User.find(user_id).player
        player.update(position)
      end
    end
  end
end
