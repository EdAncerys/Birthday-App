require 'sinatra/base'
require './lib/birthday'

class BirthdayApp < Sinatra::Base
  enable :sessions
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

  get '/' do
    erb :index
  end

  post '/user' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/birthday'
  end

  get '/birthday' do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    @birthday = Birthday.new
    erb :birthday
  end

end
