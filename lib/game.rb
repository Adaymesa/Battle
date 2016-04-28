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

end