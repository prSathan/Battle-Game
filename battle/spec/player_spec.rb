require 'player'

describe Player do

  it 'returns its name' do
    player = Player.new('Prabu')
    expect(player.name).to eq('Prabu')
  end
end
