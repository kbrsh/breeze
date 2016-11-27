class HTTP::Server
  class Context
    def query
      return @request.query_params
    end

    def redirect(url, status = 302)
      @response.headers.add "Location", url
      @response.status_code = status
      return ""
    end
  end
end
