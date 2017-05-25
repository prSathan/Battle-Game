require_relative 'player'

class Game

  attr_reader :player_1, :player_2

  def initialize(player1, player2)
    @player_1 = Player.new(player1)
    @player_2 = Player.new(player2)
  end

  def attack(player)
    player.reduce_hp
  end

end
