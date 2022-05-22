require 'sinatra/base'
require './model/rps.rb'
class RockPaperScissors < Sinatra::Base

  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  get '/game-time' do
    p params
    @player_name = params[:player_name]
    session[:player_name] = @player_name
    erb :game_time
  end

  post '/round' do
    @player_name
    @attack = params[:attack]
    @game_1 = RPS.new
    erb :round
  end



  run! if app_file == $0
end
