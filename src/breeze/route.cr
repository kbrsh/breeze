module Breeze
  class Breeze::Route
    getter handler

    def initialize(@method, path, @&handler : HTTP::Context -> _)
      
    end
  end
end
