require 'player'



describe Player do
  subject(:player_1){Player.new("Joe")}
  subject(:player_2){Player.new("Jane")}

  before do
    allow(Kernel).to receive(:rand).and_return(20)
  end


  it 'returns player_1 names' do
    player = Player.new("Jane")
    expect(player_2.name).to eq "Jane"
  end

  it 'has a starting HP of 45' do
    expect(player_2.hp).to eq Player::START_HP
  end

  

  it 'reduces player hit points' do
    player_2.receive_damage
    expect {player_2.receive_damage}.to change {player_2.hp}.by(-20)
  end


end
