require "http"
module Breeze
  class Breeze::Route
    @method : String
    @path : String
    @handler : HTTP::Server::Context -> String

    def initialize(method : String, path : String, handler : HTTP::Server::Context -> _)
      @method = method
      @path = path
      @handler = handler
    end

    def path
      return @path
    end

    def method
      return @method
    end

    def handler
      return @handler
    end
  end
end
