require 'player'

describe Player do
  subject(:player_1){Player.new("Joe")}
  subject(:player_2){Player.new("Jane")}

  it 'returns player_1 names' do
    player = Player.new("Jane")
    expect(player_2.name).to eq "Jane"
  end

  it 'has a starting HP of 45' do
    expect(player_2.hp).to eq Player::START_HP
  end

  it 'damages player' do
    expect(player_2).to receive(:receive_damage)
    player_1.attack(player_2)
  end

  it 'will deduct attack from HP' do
    player_1.attack(player_2)
    expect(player_2.hp).to eq 35
  end

end
