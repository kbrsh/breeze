def get(path, &block : HTTP::Server::Context -> _)
  Breeze::Handler::MAIN.add("GET", path, block)
end
