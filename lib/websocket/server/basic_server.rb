require 'socket'
require 'digest'
require_relative 'abstract_server'

module Server
  class BasicServer < AbstractServer
    def initialize(config)
      @ip_address = config[:ip_address]
      @port = config[:port]
      @threads = []
    end

    def server
      @server ||= TCPServer.new(@ip_address, @port)
    end

    def start
      server_thread = Thread.start do
        loop do
          Thread.start(server.accept) do |socket|
            prepare_connection(socket)
          end
        end
      end
      server_thread.join
    end

    def new_connection
    end
  end
end
