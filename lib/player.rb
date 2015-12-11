class Player
START_HP = 100
attr_reader :name, :hp, :computer

def initialize(name, hp = START_HP,computer = false)
  @name = name
  @hp = START_HP
  computer == "true" ? @computer = true : @computer = false
  # @computer = true if a == true
end

  def receive_damage
    @hp -= Kernel.rand(60)
  end

end
