require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $playerA = Player.new(params[:nameA])
    $playerB = Player.new(params[:nameB])
    redirect '/play'
  end

  post '/attack' do
    session[:attack_confirmation] = params[:attack_confirmation]
    $playerA.attack($playerB)
    redirect '/play'
  end

  get '/play' do
    @nameA = $playerA.name
    @nameB = $playerB.name
    @hpA = $playerA.hp
    @hpB = $playerB.hp
    @attack_confirmation = session[:attack_confirmation]
    erb(:play)
  end



  run! if app_file == $0
end
