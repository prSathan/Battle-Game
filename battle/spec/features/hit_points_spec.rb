

feature 'Testing points' do
    scenario "Allow a player to see other player's hit points" do
      sign_in_and_play
      click_button('Hitpoints of Player 2')
      expect(page).to have_content 'Points: 100'
    end
end
