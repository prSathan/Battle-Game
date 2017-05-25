require 'game'

describe Game do
  subject(:game) { described_class.new('p1', 'p2') }

  it 'initialises with two arguments' do
    expect(game).to be_an_instance_of(Game)
  end

  it 'creates instance of player class' do
    expect(game.player_1).to be_an_instance_of(Player)
    expect(game.player_2).to be_an_instance_of(Player)
  end

  describe '#attack' do
    it 'attacks a player' do
      expect(game.player_2).to receive(:reduce_hp)
      game.attack(game.player_2)
    end
  end

end
