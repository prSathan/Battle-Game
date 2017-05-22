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
  '<img src="http://bit.ly/1eze8aE" alt="cat_face" style="border: dashed red;">'
end
