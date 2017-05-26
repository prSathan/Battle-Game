

feature 'Testing points' do
    scenario "Allow a player to see other player's hit points" do
      sign_in_and_play
      expect(page).to have_content "Bob's Hit Points: 100"
    end

    scenario "Allow a player to see their own hit points" do
      sign_in_and_play
      expect(page).to have_content "Alice's Hit Points: 100"
    end
end
