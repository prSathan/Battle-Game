feature 'Attack player' do
  scenario 'Provides confirmation of attack' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content 'You have successfully attacked Prabu'
  end
end
