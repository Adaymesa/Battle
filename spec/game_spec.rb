require 'game'

describe Game do
	let(:game) { described_class.new(player1, player2) }
	let(:player1) { spy(:player1) }
	let(:player2)	{ spy(:player2) }

	it 'attack players' do
		game.attack(player2)
		expect(player2).to have_received(:receive_damage)
	end

  it 'retrieve player1' do
    expect(game.player1).to eq player1
  end

  it 'retrieve player2' do
    expect(game.player2).to eq player2
  end

end