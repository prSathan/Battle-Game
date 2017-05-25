def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Kavita')
  fill_in('player2', with: 'Prabu')
  click_button('Start Game')
end
