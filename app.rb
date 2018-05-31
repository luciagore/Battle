require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/add_player' do
    @player1name = params[:player1name]
    @player2name = params[:player2name]
    erb :form
  end

end
