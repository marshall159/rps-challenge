require 'sinatra/base'

class Game < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "My session secret"
  end

  get '/' do
    erb :register
  end

  post '/' do
    session[:user_name] = params[:user_name]
    @user_name = session[:user_name]
    erb :play
  end

end
