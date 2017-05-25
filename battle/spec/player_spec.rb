require 'player'

describe Player do

  it 'returns its name' do
    player = Player.new('Prabu')
    expect(player.name).to eq('Prabu')
  end

  it 'attacks a player' do
    player_1 = Player.new('Prabu')
    player_2 = Player.new('Colin')
    player_1.attack(player_2)
    expect { player_2.reduce_hp }.to change { player_2.hp }.by(-10)
  end

  it 'reduces hp when attacked' do
    player = Player.new('Colin')
    expect { player.reduce_hp }.to change { player.hp }.by(-10)
  end
end
