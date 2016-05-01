def sign_in_and_play
  visit('/')
  fill_in(:player1_name, with: "Juanito")
  fill_in(:player2_name, with: "Paquito")
  click_button("Start fight")
end