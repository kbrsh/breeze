require "http"

module Breeze
  class Breeze::Handler < HTTP::Handler
    MAIN = new
    def initialize
      @routes = [] of Route
    end

    def call(ctx : HTTP::Server::Context)
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
      found = find(ctx.request.path)
      if found
        ctx.response.puts found.handler.call ctx
      else
        ctx.response.status_code = 404
        ctx.response.headers["Content-Type"] = "text/plain"
        ctx.response.puts "404 Not Found"
      end
      puts "\t\e[32m#{ctx.request.method} \e[33m#{ctx.response.status_code} \e[0m#{ctx.request.path}"
    rescue
      ctx.response.status_code = 500
      ctx.response.puts "500 Internal Server Error"
      puts "\t\e[31m#{ctx.request.method} \e[33m#{ctx.response.status_code} \e[0m#{ctx.request.path}"
    end
  end
end
