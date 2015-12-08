require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session['nameA'] = params[:nameA]
    session['nameB'] = params[:nameB]
    redirect '/play'
  end

  post '/attack' do
    session[:attack_confirmation] = params[:attack_confirmation]
    redirect '/play'
  end

  get '/play' do
    @nameA = session['nameA']
    @nameB = session['nameB']
    @attack_confirmation = session[:attack_confirmation]
    erb(:play)
  end



  run! if app_file == $0
end
