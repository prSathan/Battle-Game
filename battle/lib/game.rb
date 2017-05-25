require_relative 'player'

class Game

  def attack(victim)
    victim.reduce_hp
  end

end
