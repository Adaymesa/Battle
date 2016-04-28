require "spec_helper"

feature "player puts name" do
  scenario "Players name" do
    sign_in_and_play
    expect(page).to have_text("Juanito VS Paquito")
  end
end