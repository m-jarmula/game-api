module Server
  module Lib
    class WebsocketResponse
      attr_reader :content

      def initialize(websocket_sec_key:)
        @content = <<-eos
HTTP/1.1 101 Switching Protocols
Upgrade: websocket
Connection: Upgrade
Sec-WebSocket-Accept: #{websocket_sec_key}

        eos
      end
    end
  end
end
