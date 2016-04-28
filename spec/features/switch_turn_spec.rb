feature "switch" do
  scenario "player can switch turn" do
    sign_in_and_play
    click_button("Switch")
    expect(page).to have_text("Juanito VS Paquito")
  end
end