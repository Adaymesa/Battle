require 'game'

describe Game do
	let(:game) { described_class.new }
	let(:player) { spy(:player) }

	it 'attack players' do
		game.attack(player)
		expect(player).to have_received(:receive_damage)
	end

end