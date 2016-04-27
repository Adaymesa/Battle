require "player"

describe Player do
	let(:player) { described_class.new('Juanito') }

	it "names the player" do
		expect(player.name).to eq "Juanito"
	end

	it "has 100 hit points" do
		expect(player.hit_points).to eq 100
	end

	it "HP decreases by 20" do
		player.receive_damage
		expect(player.hit_points).to eq 80
	end
end