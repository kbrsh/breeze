require "./breeze/*"
require "http"

module Breeze
  def self.start(port = nil, ip = nil)
    config = Config.new port, ip
    handlers = [] of HTTP::Handler
    handlers << Breeze::Handler.new
    server = HTTP::Server.new(config.ip, config.port, handlers)
    server.listen
  end
end
