class GamesController < ApplicationController
  def index
    ActionCable.server.broadcast('GameChannel',
                                 message: 'est',
                                 user: current_user)
    head :ok
  end
end
