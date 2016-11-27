def get(path, &block : Breeze::Context -> String)
  Breeze::Handler::MAIN.add("GET", path, block)
end
