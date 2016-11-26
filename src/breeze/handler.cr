require "http"

module Breeze
  class Breeze::Handler < HTTP::Handler
    def initialize
      @routes = [] of Route
    end

    def call(ctx)

    end

    def add(method, path, &handler : HTTP::Server::Context -> _)
      @routes << Route.new(method, path, &handler)
    end
  end
end
