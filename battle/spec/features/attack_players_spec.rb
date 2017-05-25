feature 'Attack player' do
  scenario 'Provides confirmation of attack' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content 'You have successfully attacked Prabu'
  end

  scenario 'attack reduces hp by 10' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button('Opponent Hitpoints')
    expect(page).to have_content 'Points: 90'
  end
end
