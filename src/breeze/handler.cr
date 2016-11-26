require "http"

module Breeze
  class Breeze::Handler < HTTP::Handler
    def initialize
      @routes = [] of Route
    end

    def call(ctx)
      execReq(ctx)
    end
  end
end
