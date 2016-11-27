require "./src/breeze.cr"

get "/" do |ctx|
  thing = ctx.params.has_key?("name") ? ctx.params["name"] : "Breeze"
  "Hello #{thing}!"
end

get "/test" do |ctx|
  "Hello #{ctx.request.path}, code: #{ctx.response.status_code}, params: #{ctx.request.query_params}"
end

Breeze.start
