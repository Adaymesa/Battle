require 'spec_helper'

feature "Players have hit points:" do
  scenario "player 2 has 100 hit points (HP)" do
    sign_in_and_play
    expect(page).to have_text('Paquito\'s HP : 100')
  end

  scenario "player 2's hit points decrease by 20" do
    sign_in_and_play
    click_button('Attack Paquito')
    expect(page).to have_text('Paquito\'s HP : 80')
  end
end