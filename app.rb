require 'sinatra/base'

class Game < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "My session secret"
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:user_name] = params[:user_name]
    redirect '/play'
  end

  before '/play/*' do
    @user_name = session[:user_name]
  end

  get '/play/:choice' do
    @user_choice = params[:choice]
    erb :choice
  end

  get '/play' do
    # @user_name = session[:user_name]
    erb :play
  end



end
