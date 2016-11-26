require "./src/breeze.cr"

get "/" do
  "Hello Breeze!"
end

get "/test" do |ctx|
  "Hello #{ctx.request.path}"
end

Breeze.start(3000)
