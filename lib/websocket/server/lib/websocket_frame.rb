module Server
  module Lib
    class WebsocketFrame
      attr_reader :payload

      MASK_BYTES = 4

      def initialize(socket:)
        @first_byte = socket.getbyte
        @second_byte = socket.getbyte
        @mask = MASK_BYTES.times.map { socket.getbyte }
        @masked_data = payload_size.times.map { socket.getbyte }
        @payload = stringify_unmask_data
      end

      private

      def masked?
        @second_byte & 0b10000000
      end

      def payload_size
        @second_byte & 0b01111111
      end

      def unmask_data
        @masked_data.each_with_index.map { |byte, i| byte ^ @mask[i % 4] }
      end

      def stringify_unmask_data
        unmask_data.pack('C*').force_encoding('utf-8').inspect
      end
    end
  end
end
