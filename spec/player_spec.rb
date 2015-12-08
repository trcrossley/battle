require 'player'

describe Player do

  subject(:name) { double(:name) }
  subject(:player) { described_class.new(name) }

  it 'returns player name' do
    expect(player.name).to eq name
  end

end
