require "./breeze/*"
require "http"

module Breeze
  config = Breeze.config
  def self.start(port ip)
    server = HTTP::Server.new(ip, port, handlers)
    server.listen
  end
end
