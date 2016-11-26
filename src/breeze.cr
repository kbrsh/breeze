require "./breeze/*"
require "http"

module Breeze
  main_handler = Breeze::Handler.new
  def self.start(port = nil, ip = nil)
    config = Config.new port, ip
    handlers = [] of HTTP::Handler
    handlers << main_handler
    server = HTTP::Server.new(config.ip, config.port, handlers)
    server.listen
  end
end
