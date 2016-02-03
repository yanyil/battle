require 'player'

describe Player do

  subject (:player) {described_class.new("name")}
  let(:name) {double :name}

  it 'is expected to return its own name' do
    expect(subject.name).to eq "name"
  end

end