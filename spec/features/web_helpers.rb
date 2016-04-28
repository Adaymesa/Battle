def sign_in_and_play
  visit('/')
  fill_in("Player 1", with: "Juanito")
  fill_in("Player 2", with: "Paquito")
  click_button("Submit")
end