require "./src/breeze.cr"

get "/" do
  "Hello Breeze!"
end

get "/test" do |ctx|
  "Hello #{ctx.request.path}, code: #{ctx.response.status_code}, params: #{ctx.request.query_params}"
end

Breeze.start
