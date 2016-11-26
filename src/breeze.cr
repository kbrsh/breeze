require "./breeze/*"
require "http"

module Breeze
  def self.start(port, ip)
    config = Breeze.Config(port, ip);
    server = HTTP::Server.new(config.ip, config.port, handlers)
    server.listen
  end
end
