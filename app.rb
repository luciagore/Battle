require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end
  post '/add_player' do
    session[:player1name] = params[:player1name]
    session[:player2name] = params[:player2name]
    redirect '/play'
  end
  get '/play' do
    @player1name = session[:player1name]
    @player2name = session[:player2name]
    erb :play
  end

end
