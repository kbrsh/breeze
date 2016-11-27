def get(path, &block : HTTP::Server::Context -> String)
  Breeze::Handler::MAIN.add("GET", path, block)
end

def post(path, &block : HTTP::Server::Context -> String)
  Breeze::Handler::MAIN.add("POST", path, block)
end
