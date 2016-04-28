describe "switch turn" do
  scenario "seeing current player as default" do
    sign_in_and_play
    expect(page).to have_text("It's now Juanito turn.")
  end

  scenario "after player 1 attacks" do
    sign_in_and_play
    click_button("Attack Paquito")
    expect(page).to have_text("It's now Paquito turn.")
  end
end

