class Game
  attr_reader :playerA, :playerB, :counter, :active_player, :attacked_player

  def initialize(playerA, playerB)
    @players = [playerA, playerB]
    @counter = 0
    @active_player = nil
    @attacked_player = nil
  end

  def playerA
    @players.first
  end

  def playerB
    @players.last
  end

  def attack_switch
    if counter.even?
      attack(playerA)
      @active_player = playerB.name
      @attacked_player = playerA.name
      turn_counter
    else
      attack(playerB)
      @active_player = playerA.name
      @attacked_player = playerB.name
      turn_counter
    end
  end

  def attack(player)
    player.damage
  end

  def turn_counter
    @counter += 1
  end


end
