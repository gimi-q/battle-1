# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
feature 'reduce player HP' do
  scenario 'reduce HP after attack' do
    sign_in_and_play
    click_button('Attack')
    visit('play')
    expect(page).to have_content 'Joe vs Jane Joe: 45HP Jane: 35HP Attack'
  end


end
