require 'game'

describe Game do
	let(:game) { described_class.new(player1, player2) }
	let(:player1) { spy(:player1) }
	let(:player2)	{ spy(:player2) }

	it 'attack players' do
		game.attack(player2)
		expect(player2).to have_received(:receive_damage)
	end



end