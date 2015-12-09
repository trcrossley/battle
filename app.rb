require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    playerA = Player.new(params[:nameA])
    playerB = Player.new(params[:nameB])
    $game = Game.new(playerA,playerB)
    redirect '/play'
  end

  post '/attack' do
    session[:attack_confirmation] = params[:attack_confirmation]
    @game = $game
    @game.attack_switch
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @attack_confirmation = session[:attack_confirmation]
    erb(:play)
  end



  run! if app_file == $0
end
