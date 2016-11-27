require "./src/breeze.cr"

get "/" do |ctx|
  thing = ctx.query.has_key?("name") ? ctx.query["name"] : "Breeze"
  "Hello #{thing}!"
end

get "/test" do |ctx|
  "Hello #{ctx.request.path}, code: #{ctx.response.status_code}, params: #{ctx.query}"
end

Breeze.start
