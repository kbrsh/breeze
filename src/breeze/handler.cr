require "http"

module Breeze
  class Breeze::Handler
    include HTTP::Handler
    MAIN = new
    def initialize
      @routes = [] of Route
    end

    def call(ctx : HTTP::Server::Context)
      time = Time.now
      execReq(ctx)
      puts "\t#{readable_time(Time.now - time)}"
    end

    def add(method, path, handler)
      @routes << Route.new(method, path, handler)
    end

    def find(method, path)
      matched = @routes.select {|route|
        route.method =~ Regex.new(method) && route.path =~ Regex.new(path)
      }
      match = matched[0]?
      return match
    end

    def execReq(ctx)
      found = find(ctx.request.method, ctx.request.path)
      if found
        ctx.response.puts found.handler.call(ctx)
      else
        ctx.response.status_code = 404
        ctx.response.headers["Content-Type"] = "text/plain"
        ctx.response.puts "404 Not Found"
      end
      puts "\t\e[32m#{ctx.request.method} \e[0m#{ctx.request.path} \e[33m#{ctx.response.status_code}\e[0m"
    rescue
      ctx.response.status_code = 500
      ctx.response.puts "500 Internal Server Error"
      puts "\t\e[31m#{ctx.request.method} \e[33m#{ctx.response.status_code} \e[0m#{ctx.request.path}"
    end

    private def readable_time(elapsed)
      "#{(elapsed.total_milliseconds * 1000).round(2)}µs"
    end
  end
end
