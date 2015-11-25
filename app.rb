require 'sinatra'
require 'sinatra/cookies'

get '/' do
  cookies[:test] = 'micky'
  'hello'
end

get '/read' do
  "cookie[:test]=#{cookies[:test]}"
end

get '/del_cookie' do
  response.delete_cookie 'test'
  'deleted'
end
