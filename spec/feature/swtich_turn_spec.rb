# As two Players,
# So we can continue our game of Battle,
# We want to switch turns
feature 'switch player turn' do
  scenario 'should switch turns' do
    sign_in_and_play
    expect(page).to have_content 'Player 2 turn'
  end
end
