def get(path, &block : HTTP::Server::Context -> String)
  Breeze::Handler::MAIN.add("GET", path, block)
end
