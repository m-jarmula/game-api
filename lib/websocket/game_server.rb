require_relative './server/websocket_server'

module Websocket
  class GameServer < Server::WebsocketServer
    def on_message(connection, message)
      STDERR.puts("#{connection.socket} sends message #{message}")
    end

    def on_connect(connection)
      STDERR.puts("#{connection.request} has arrived")
    end

    def on_disconnect
      STDERR.puts("#{@connection.socket} has disconnected")
    end
  end
end
