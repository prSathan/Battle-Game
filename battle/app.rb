require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "secret-session"

  get '/' do
    erb(:index)
  end

 post '/names' do
   session[:player_1] = params[:player1]
   session[:player_2] = params[:player2]
   redirect to('/play')
 end

 get '/play' do
   @player_1 = session[:player_1]
   @player_2 = session[:player_2]
   erb(:play)
 end

  # run! if app_file == $0

end
