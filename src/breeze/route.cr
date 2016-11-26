module Breeze
  class Breeze::Route
    getter handler
    @parts = [] of String
    def initialize(method, path, &handler : HTTP::Server::Context -> _)
      @parts = path.split "/"
    end
  end
end
