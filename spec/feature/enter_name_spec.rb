
describe 'User Stories' do

  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  feature 'name form' do
    scenario 'submit name' do
      visit('/')
      fill_in :player_1, with: 'Joe'
      fill_in :player_2, with: 'Jane'
      click_button 'Submit'
      expect(page).to have_content 'Joe vs Jane'
    end
  end
end
