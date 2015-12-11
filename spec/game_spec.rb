require 'game'

describe Game do

  subject(:game) { described_class.new(playerA,playerB) }
  let(:playerA) { double :player, hp: 0 }
  let(:playerB) { double :player, hp: 60 }

  describe '#playerA' do
    it 'creates player A' do
      expect(game.playerA).to eq playerA
    end
  end

  describe '#playerB' do
    it 'creates playerB' do
      expect(game.playerB).to eq playerB
    end
  end

  it 'reduces attacked player hp by 10' do
    expect(playerB).to receive(:damage)
    game.attack(playerB)
  end

  it 'returns false when a player is not dead' do
    expect(game.dead?(playerB)).to eq false
  end

  it 'returns true when a player has 0 HP' do
    expect(game.dead?(playerA)).to eq true
  end

  xit 'ends game when a player is dead' do

  end
end
