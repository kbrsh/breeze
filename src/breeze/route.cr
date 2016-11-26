module Breeze
  class Breeze::Route
    def initialize(method, path, handler)
      @method = method
      @path = path
      @handler = handler
    end
  end
end
