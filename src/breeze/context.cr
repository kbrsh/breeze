class HTTP::Server
  class Context
    def query
      return @request.query_params
    end
  end
end
