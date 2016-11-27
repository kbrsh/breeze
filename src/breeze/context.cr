class HTTP::Server
  class Context
    def params
      return @request.query_params
    end
  end
end
