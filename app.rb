require 'sinatra/base'
require './player'
require './game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end
  post '/add_player' do
    player1 = Player.new(params[:player1name])
    player2 = Player.new(params[:player2name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end
  get '/play' do
    @game = $game
    erb :play
  end
  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    erb :attack
  end

end
