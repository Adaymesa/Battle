require 'sinatra/base'
require "./lib/player"
require './lib/game'

class Battle < Sinatra::Base
	enable :sessions
  get '/' do
    erb(:index)
  end

  post "/names" do
		$player1 = Player.new(params[:player1_name])
		$player2 = Player.new(params[:player2_name])
    session[:attacked] = false
		redirect("/play")
  end

  get "/play" do
  	@player1_name = $player1.name
  	@player2_name = $player2.name
    @player1_hp = $player1.hit_points
    @player2_hp = $player2.hit_points 
    @attacking = session[:attacked]
  	erb(:play)
  end

  post "/attack" do
    @player_attacked = params[:player] == 'Player1' ? $player1 : $player2
    @execute_attack = Game.new.attack(@player_attacked)
    session[:attacked] = true
  	redirect('/play')
  end
# start the server if ruby file executed directly
  run! if app_file == $0
end
