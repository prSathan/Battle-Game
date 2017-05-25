require 'game'

describe Game do
  subject(:game) { described_class.new('p1', 'p2') }

  describe '#attack' do
    it 'attacks a player' do
      expect(game.player_2).to receive(:reduce_hp)
      game.attack(game.player_2)
    end
  end

end
