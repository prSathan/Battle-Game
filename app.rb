require 'sinatra'

get '/' do
  "Hello World"
end

get '/another_page' do
  "new page"
end

get '/secret' do
  'the secret page!'
end
