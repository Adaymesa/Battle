require "spec_helper"


feature "player puts name" do
	scenario "Players name" do
		visit "/"
		fill_in("Player 1", with: "Juanito")
		fill_in("Player 2", with: "Paquito")
		click_button("Submit")
		expect(page).to have_text("Juanito VS Paquito")
	end
end