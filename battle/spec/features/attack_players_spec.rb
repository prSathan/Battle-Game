feature 'Attack player' do


  scenario 'Player 1\'s attack reduces Player 2\'s hp by 10' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button("Bob's Turn")
    expect(page).to have_content 'Points: 90'
  end

  scenario 'Player 2\'s attack reduces Player 1\'s hp by 10' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button("Bob's Turn")
    click_button('ATTACK!')
    click_button("Alice's Turn")
    expect(page).to have_content 'Points: 90'
  end

  scenario 'ends turn and switches' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button("Bob's Turn")
    expect(page).to have_selector(:button, 'ATTACK!')
  end

  scenario 'switching changes active player' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button("Bob's Turn")
    click_button('ATTACK!')
    expect(page).to have_content 'You have successfully attacked Alice'
  end

  scenario 'Provides confirmation of attack' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content 'You have successfully attacked Bob'
  end

  scenario 'player 2 attacks player 1 and receives confirmation' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button("Bob's Turn")
    click_button('ATTACK!')
    expect(page).to have_content 'You have successfully attacked Alice'
  end



end
