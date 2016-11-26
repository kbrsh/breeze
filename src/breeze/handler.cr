require "http"

module Breeze
  class Breeze::Handler < HTTP::Handler
    def initialize
      @routes = [] of Route
    end

    def call(ctx)
      execReq(ctx)
    end

    def add(method, path, &handler)
      @routes << Route.new(method, path, &handler)
    end

    def find(path)
      matched = @routes.select |route| do
        route =~ Regexp.new(path)
      end
    end
  end
end
