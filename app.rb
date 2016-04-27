require 'sinatra/base'
require "player"

class Battle < Sinatra::Base
	enable :sessions
  get '/' do
    erb(:index)
  end

  post "/names" do
		$player1 = Player.new(params[:player1_name])
		$player2 = Player.new(params[:player2_name]) 	
		redirect("/play")
  end

  get "/play" do
  	@player1_name = $player1.name
  	@player2_name = $player2.name
  	erb(:play)
  end

  get "/attack" do
  	@player1_name = $player1.name
  	@player2_name = $player2.name
  	@attacking = true
  	erb(:play)
  end
# start the server if ruby file executed directly
  run! if app_file == $0
end
