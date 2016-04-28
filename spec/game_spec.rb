require 'game'

describe Game do
  let(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player1, receive_damage: false, hit_points: 0, name: "Juanito") }
  let(:player2) { double(:player2, receive_damage: false, hit_points: 0, name: "Paquito") }

  it 'attack players' do
    game.attack
    expect(player2).to receive(:receive_damage)
    player2.receive_damage
  end

  it 'attacks after switch' do
    game.switch
    game.attack
    expect(player1).to receive(:receive_damage)
    player1.receive_damage
  end

  it 'retrieves player1' do
    expect(game.player1).to eq player1
  end

  it 'retrieves player2' do
    expect(game.player2).to eq player2
  end

  it 'switches player' do
    turn = player1
    expect(game.switch).to eq player2
  end

  it "game over player2" do
  	player2.hit_points
  	expect(game.attack).to be false
  	expect(game.check_loser).to eq "Paquito"
  end

  # it "game over player1" do
  # 	player1.hit_points
  # 	expect(game.attack).to be false
  # 	expect(game.gameover).to eq "Juanito loses"
  # end
end