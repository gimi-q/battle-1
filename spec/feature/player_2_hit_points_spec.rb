describe 'User Stories' do

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points
  feature 'Player 2 hit points' do
    scenario 'see hit points' do
      visit('/')
      fill_in :player_1, with: 'Joe'
      fill_in :player_2, with: 'Jane'
      click_button 'Submit'
      expect(page).to have_content 'Jane: 45HP'
    end
  end
end
