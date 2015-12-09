class Game
  attr_reader :playerA, :playerB

  def initialize(playerA, playerB)
    @players = [playerA, playerB]
  end

  def playerA
    @players.first
  end

  def playerB
    @players.last
  end
  
  def attack(player)
    player.damage
  end
end
