require 'sinatra/base'
require "./lib/player"
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post "/names" do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    $game = Game.new(player1, player2)
    redirect("/play")
  end

  get "/play" do
    @game = $game
    erb :play
  end

  get "/attack" do
    @game = $game
    @attack = @game.attack
    @game.switch
    if @game.gameover? 
    	@loser = @game.check_loser
    	redirect("/gameover")
    else
    	redirect("/attack")
    end
    erb :play
  end

 	get "/gameover" do
 		erb :gamover
 	end
# start the server if ruby file executed directly
  run! if app_file == $0
end
