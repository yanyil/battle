require 'player'

describe Player do
  subject (:dave) { described_class.new('Dave') }
  subject (:mittens) { described_class.new('Mittens') }

  it 'is expected to return its own name' do
    expect(dave.name).to eq 'Dave'
  end

  it 'returns the hit points' do
    expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end

  it 'reduces the player hit points' do
    expect { dave.receive_damage }.to change { dave.hit_points }.by(-10)
  end

end