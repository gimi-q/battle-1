class Player
START_HP = 45
attr_reader :name, :hp


def initialize(name, hp = START_HP)
  @name = name
  @hp = START_HP
end

  def receive_damage
    @hp -= 10
  end

  def attack(player)
    player.receive_damage
  end

end
