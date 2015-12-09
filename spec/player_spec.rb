require 'player'

describe Player do

  subject(:name) { double(:name) }
  subject(:player) { described_class.new(name) }

  it 'returns player name' do
    expect(player.name).to eq name
  end

  it 'reduces attacked player hp by 10' do
    playerA = Player.new(:name)
    playerB = Player.new(:name)
    expect { playerA.attack(playerB) }.to change { playerB.hp }.by -10
  end
end
