module Breeze
  class Breeze::Context
    getter request : Request
    getter response : Response
    def initialize(@request : Request, @response : Response)
    end
  end
end
