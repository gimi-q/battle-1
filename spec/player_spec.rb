require 'player'

describe Player do

  it 'returns player_1 names' do
    player = Player.new("Jane")
    expect(player.name).to eq "Jane"
  end

end
