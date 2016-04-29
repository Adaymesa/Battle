class Game

  attr_reader :player1, :player2, :turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = @player1
  end

  def switch
    @turn == player1 ? @turn = player2 : @turn = player1
  end

  def attack
    @turn == player1 ? player2.receive_damage : player1.receive_damage
  end

  def gameover?
  	true if check_loser
  	false
  end

  def check_loser
  	if player2.hit_points == 0
  		player2.name
  	elsif player1.hit_points == 0
  		player1.name
  	end
  end

end
