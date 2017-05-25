require 'game'

describe Game do

  it 'attacks a player' do
    player_1 = Player.new('Prabu')
    player_2 = Player.new('Colin')
    player_1.attack(player_2)
    expect { player_2.reduce_hp }.to change { player_2.hp }.by(-10)
  end
  
end
