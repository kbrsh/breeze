require "./src/breeze.cr"

get "/" do
  "Hello Breeze!"
end

Breeze.start(3000)
