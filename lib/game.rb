require 'forwardable'

class Game
  extend Forwardable

  def_delegator :player_1, :name, :player_1_name
  def_delegator :player_1, :hp, :player_1_hp
  def_delegator :player_2, :name, :player_2_name
  def_delegator :player_2, :hp, :player_2_hp

  attr_reader :player_1, :player_2, :players
  attr_accessor :turn, :players, :losing_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [player_1,player_2]
    @turn = player_1
    @losing_player = nil
  end

  def attack
   opponent.receive_damage
  end

  def switch_turn
    @players = @players.reverse
  end

  def opponent
    @players[1]
  end

end
