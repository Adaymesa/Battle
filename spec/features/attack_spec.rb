require 'spec_helper'

feature "attacking" do
  scenario "player 1 attacks" do
    sign_in_and_play
    click_button("Attack Paquito")
    expect(page).to have_text "Juanito succesfully attacks Paquito"
  end
end
  
  