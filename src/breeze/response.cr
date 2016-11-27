module Breeze
  class Breeze::Response
    def initialize(content_type)
      @content_type = "text/plain"
    end

    def content_type
      return @content_type
    end
  end
end
