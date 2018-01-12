require 'pry'

namespace :web_socket_server do
  desc "TODO"
  task start: :environment do
    server = Websocket::GameServer.new(ip_address: 'localhost', port: 2345)
    server.start
  end

end
