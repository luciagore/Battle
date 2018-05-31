require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end
  post '/add_player' do
    $player1name = params[:player1name]
    $player2name = params[:player2name]
    redirect '/play'
  end
  get '/play' do
    @player1name = $player1name
    @player2name = $player2name
    erb :play
  end
  get '/attack' do
    @player1name = $player1name
    @player2name = $player2name
    erb :attack
  end

end
