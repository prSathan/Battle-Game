require 'sinatra'

set   :session_secret, 'super-secret'

get '/' do
  "Hello World"
end

get '/another_page' do
  "new page"
end

get '/secret' do
  'the secret page!'
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
