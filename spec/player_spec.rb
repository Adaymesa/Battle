require "player"

describe Player do

	it "names the player" do
		player = Player.new("Juanito")
		expect(player.name).to eq "Juanito"
	end
end