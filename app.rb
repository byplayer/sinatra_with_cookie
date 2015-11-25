require 'sinatra'
require 'sinatra/cookies'

get '/' do
  response.set_cookie(:test,
                      value: 'micky',
                      expires: (Time.now + (24 * 60 * 60)))
  'hello'
end

get '/read' do
  "cookie[:test]=#{cookies[:test]}"
end

get '/del_cookie' do
  response.delete_cookie 'test'
  'deleted'
end
