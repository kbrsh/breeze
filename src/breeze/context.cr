class HTTP::Server
  class Context
    def content_type(content_type : String)
      return @response.headers["Content-Type"]
    end

    def params

    end
  end
end
