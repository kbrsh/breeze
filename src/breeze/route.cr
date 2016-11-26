module Breeze
  class Breeze::Route
    getter handler

    def initialize(@method, path, @&handler : HTTP::Context -> _)
      @parts = path.split "/"
    end
  end
end
