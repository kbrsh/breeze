def get(path, &block : HTTP::Server::Context -> _)
  Breeze::Handler.new.add("GET", path, &block)
end
