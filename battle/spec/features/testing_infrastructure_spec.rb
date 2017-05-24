

feature 'Testing infrastructure' do

    scenario 'Allows players to fill in their names and see them on screen' do
       visit('/')
       fill_in('player1', with: 'Kavita')
       fill_in('player2', with: 'Prabu')
       click_button('Submit')
       expect(page).to have_content 'Kavita vs Prabu'
    end

    scenario "Allow a player to see other player's hit points" do
      visit('/')
      fill_in('player1', with: 'Kavita')
      fill_in('player2', with: 'Prabu')
      click_button('Submit')
      click_button('Hitpoints of Player 2')
      expect(page).to have_content 'Points: 100'
    end

end
