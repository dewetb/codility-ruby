require_relative 'tape_equilibrium'

describe TapeEquilibrium do
  let(:tape) { TapeEquilibrium.new }

  it 'is a TapeEquilibrium' do
    expect(tape).to be_a_kind_of(TapeEquilibrium)
  end

  it 'returns the smallest difference that can be achieved' do
    expect(tape.solution([3, 1, 2, 4, 3])).to eq(1)
    expect(tape.solution([1, 3])).to eq(2)
    expect(tape.solution([1, 1, 1, 1])).to eq(0)
    expect(tape.solution([1, 1, 1, 1, 1])).to eq(1)
    expect(tape.solution([100, 1, 1, 1, 1, 1])).to eq(95)
  end

end
