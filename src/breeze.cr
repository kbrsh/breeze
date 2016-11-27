require "./breeze/*"
require "http"

module Breeze
  def self.start(port = nil, ip = nil)
    puts "\e[34m======= Breeze =======\e[0m"
    config = Config.new port, ip
    handlers = [] of HTTP::Handler
    handlers << Breeze::Handler::MAIN
    server = HTTP::Server.new(config.ip, config.port, handlers)
    server.listen
  end
end
