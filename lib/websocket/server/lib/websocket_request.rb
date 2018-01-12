module Server
  module Lib
    class WebsocketRequest
      attr_reader :websocket_key, :cookies, :body

      EndOfStream = "\r\n".freeze
      InvalidWebsocketKey = Class.new(RuntimeError)

      def initialize(socket:)
        @socket = socket
        @body = read_stream
        @websocket_key = prepare_websocket_key
        @cookies = prepare_cookies
      end

      def prepare_websocket_key
        websocket_key = match_element(@body, /^Sec-WebSocket-Key: (\S+)/)
        throw_invalid_websocket_key unless websocket_key
        @websocket_key = websocket_key
      end

      def prepare_cookies
        cookies_string = match_element(@body, /^Cookie: (.*)/).chomp
        @cookies = cookies_string.chomp.split(';').map { |cookie| Hash[*cookie.split('=')] }
      end

      private

      def match_element(str, regex)
        matches = str.match(regex)
        return nil unless matches
        matches[1] if matches
      end

      def read_stream
        http_request = ''
        while (line = @socket.gets) && (line != EndOfStream)
          http_request += line
        end
        http_request
      end

      def throw_invalid_websocket_key
        raise InvalidWebsocketKey, 'Invalids websocket key'
      end
    end
  end
end
