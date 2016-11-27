require "./src/breeze.cr"

get "/" do |ctx|
  "Hello Breeze! \n Content Type: #{ctx.content_type}"
end

get "/test" do |ctx|
  "Hello #{ctx.request.path}, code: #{ctx.response.status_code}, params: #{ctx.request.query_params}"
end

Breeze.start
