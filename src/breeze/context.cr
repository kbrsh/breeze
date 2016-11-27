class HTTP::Server
  class Context
    def content_type
      return @response.headers["Content-Type"]
    end
    def params
    end
  end
end
