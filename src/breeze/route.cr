module Breeze
  class Breeze::Route
    getter handler

    def initialize(@method, path, @&handler : Breeze::Handler -> _)
      @parts = path.split "/"
    end
  end
end
