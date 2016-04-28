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
  	erb(:play)
  end

  get "/attack" do
  	@attack = @game.player1.attack(player2)
		@game = $game
		erb(:play)
 end
# start the server if ruby file executed directly
  run! if app_file == $0
end
