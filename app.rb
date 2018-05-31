require 'sinatra/base'
require './player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end
  post '/add_player' do
    $player1 = Player.new(params[:player1name])
    $player2 = Player.new(params[:player2name])
    redirect '/play'
  end
  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :play
  end
  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    @player1.attack(@player2)
    erb :attack
  end

end
