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

  get '/play' do
    @nameA = session['nameA']
    @nameB = session['nameB']
    erb(:play)
  end

  run! if app_file == $0
end
