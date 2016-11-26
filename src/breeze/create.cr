def get(path, &block : HTTP::Server::Context -> _)
  main_handler.add("GET", path, &block)
end
