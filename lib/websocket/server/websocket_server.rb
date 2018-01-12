require_relative 'basic_server'
require_relative 'lib/websocket_connection'

module Server
  class WebsocketServer < BasicServer
    CONNECTION_CLOSE_SYMBOL = "\"\\u0003\\xE9\""

    def prepare_connection(socket)
      @socket = socket
      @connection = Lib::WebsocketConnection.new(socket)
      on_connect(@connection)
      send_handshake
      read_message
    end

    def send_handshake
      @socket.write(@connection.response)
    end

    def read_message
      while (message = @connection.recv)
        puts "Received #{message}"
        if message != CONNECTION_CLOSE_SYMBOL
          on_message(@connection, message)
        else
          on_disconnect
        end
      end
    end

    def on_message(connection, message)
      STDERR.puts("#{connection.socket} sends message #{message}")
    end

    def on_connect(connection)
      STDERR.puts("#{connection.socket} has arrived")
    end

    def on_disconnect
      STDERR.puts("#{@connection.socket} has disconnected")
    end
  end
end
