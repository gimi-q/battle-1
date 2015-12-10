require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    $game # might be useless check this
    @game = $game
    if @game.player_2.hp <= 0
      @game.losing_player = @game.player_2
      erb :outcome
    elsif @game.player_1.hp <=0
      @game.losing_player = @game.player_1
      erb :outcome
    else
    erb :play
    end
  end

  get '/attack' do
    @game = $game
      @game.attack
      @game.switch_turn
      erb :attack

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
