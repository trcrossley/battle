require 'sinatra/base'

class Battle < Sinatra::Base

run! if app_file == $0

  get '/' do
    erb(:index)
  end

enable :sessions

  post '/names' do
    session['nameA'] = params[:nameA]
    session['nameB'] = params[:nameB]
    # "nameA = " << session[:nameA].inspect
    # "nameB = " << session[:nameB].inspect
    redirect '/play'
  end

  get '/play' do
    @nameA = session['nameA']
    @nameB = session['nameB']
    erb(:play)
  end


end
