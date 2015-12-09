require 'game'

describe Game do

  subject(:game) { described_class.new(playerA,playerB) }
  let(:playerA) { double :player }
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
end
