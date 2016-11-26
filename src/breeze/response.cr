module Breeze
  class Breeze::Response
    def initialize
      @content_type = "test/plain"
    end

    def content_type
      return @content_type
    end
  end
end
