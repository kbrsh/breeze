require "http"

module Breeze
  class Breeze::Handler < HTTP::Handler
    MAIN = new
    def initialize
      @routes = [] of Route
    end

    def call(ctx : HTTP::Server::Context)
      puts "Calling Context"
      execReq(ctx)
    end

    def add(method, path, handler)
      @routes << Route.new(method, path, handler)
    end

    def find(path)
      matched = @routes.select {|route| route.path =~ Regex.new(path)}
      match = matched[0]?
      return match
    end

    def execReq(ctx)
      if find(ctx.request.path)
        ctx.response.status_code = 200
        ctx.response.headers["Content-Type"] = "text/plain"
        ctx.response.puts "Found"
      end
      ctx.response.status_code = 404
      ctx.response.headers["Content-Type"] = "text/plain"
      ctx.response.puts "Not Found"
    end
  end
end
