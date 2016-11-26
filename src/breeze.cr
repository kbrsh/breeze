require "./breeze/*"
require "http"

module Breeze
  def self.start(port = nil, ip = nil)
    config = Config.new port, ip
    puts config.port
    #server = HTTP::Server.new(config.ip, config.port, handlers)
    #server.listen
  end
end
