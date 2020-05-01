require 'sinatra/base'

class BirthdayApp < Sinatra::Base
  enable :sessions
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

  get '/' do
    erb :index
  end

end



# post '/names' do
#   session[:player_1] = params[:player_1]
#   session[:player_2] = params[:player_2]
#   redirect '/play'
# end

# get '/play' do
#   @player_1 = session[:player_1]
#   @player_2 = session[:player_2]
#   erb :play
# end