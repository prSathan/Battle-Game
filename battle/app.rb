require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "secret-session"

  get '/' do
    erb(:index)
  end

 post '/names' do
   $player_1 = Player.new(params[:player1])
   $player_2 = Player.new(params[:player2])
   redirect to('/play')
 end

 get '/play' do
   @player_1_name = $player_1.name
   @player_2_name = $player_2.name
   erb(:play)
 end

 post '/hitpoints' do
   @player_1_points = $player_1.hp
   @player_2_points = $player_2.hp
   erb(:hitpoints)
 end

 post '/attack' do
   @player_1 = $player_1
   @player_2 = $player_2
   @player_1.attack(@player_2)
   erb(:attack)
 end

  # run! if app_file == $0

end
