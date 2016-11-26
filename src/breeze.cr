require "./breeze/*"
require "http"

module Breeze
  def self.start(port ip)
    server = HTTP::Server.new(ip, port, handlers)
    server.listen
  end
end
