class HTTP::Server
  class Context
    def content_type(content_type : String)
      headers["Content-Type"] = content_type if content_type
      return @response.headers["Content-Type"]
    end

    def params

    end
  end
end
