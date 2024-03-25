require "kemal"

get "/" do |env|
  env.redirect "/index.html"
end

Kemal.run
