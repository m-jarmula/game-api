require_relative 'websocket_request'
require_relative 'websocket_response'
require_relative 'websocket_frame'

module Server
  module Lib
    class WebsocketConnection
      attr_reader :request, :socket
      MagicConst = '258EAFA5-E914-47DA-95CA-C5AB0DC85B11'.freeze

      def initialize(socket)
        @socket = socket
        @request = Lib::WebsocketRequest.new(socket: socket)
      end

      def response
        @response ||= Lib::WebsocketResponse.new(websocket_sec_key: generate_second_websocket_key)
                                            .content
      end

      def recv
        Lib::WebsocketFrame.new(socket: @socket).payload
      end

      def send(message)
        output = [0b10000001, message.size, message]
        @socket.write output.pack("CCA#{message.size}")
      end

      private

      def generate_second_websocket_key
        Digest::SHA1.base64digest([@request.websocket_key, MagicConst].join)
      end
    end
  end
end
