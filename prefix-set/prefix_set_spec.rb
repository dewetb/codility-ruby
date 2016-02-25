require_relative 'prefix_set'

describe PrefixSet do
  it 'returns the index of the largest prefix set' do
    expect(PrefixSet.prefix_set([2, 2, 1, 0, 1, 9, 2])).to eq(5)
    expect(PrefixSet.prefix_set([2, 2, 1, 0, 1])).to eq(3)
    expect(PrefixSet.prefix_set([2])).to eq(0)
  end
end
