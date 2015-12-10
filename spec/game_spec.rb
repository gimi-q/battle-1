require 'game'
require 'player'
describe Game do
  let(:player_1_dbl) {double :player}
  let(:player_2_dbl) {double :player}
  let(:game) {described_class.new(player_1_dbl,player_2_dbl)}

  describe '#attack' do
    # it 'damages player' do
    #   expect(player_2_dbl).to receive(:receive_damage)
    #   game.attack #(player_2_dbl)
    # end
  end

  it 'retrieve names for player_1' do
    expect(game.player_1).to eq player_1_dbl
  end

  it 'retrieve names for player_2' do
    expect(game.player_2).to eq player_2_dbl
  end

  it 'switch player turns' do

    new_player1 = Player.new("Tony")
    new_player2 = Player.new("roy")
    new_game = Game.new(new_player1,new_player2)
    new_game.switch_turn
    expect(new_game.players[0]).to eq(new_player2)
  end
end
