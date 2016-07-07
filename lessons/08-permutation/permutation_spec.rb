require_relative 'permutation'
describe Permutation do
  let(:permutation) { Permutation.new }

  it 'returns 1 if the given array is a permutation' do
    expect(permutation.solution([4, 1, 3, 2])).to eq(1)
  end

  it 'returns 0 if the given array is not a permutation' do
    expect(permutation.solution([4, 1, 2])).to eq(0)
  end
end
