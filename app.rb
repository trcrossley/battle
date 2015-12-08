require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @nameA = params[:nameA]
    @nameB = params[:nameB]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
