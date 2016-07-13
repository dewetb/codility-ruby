require_relative '5_1_counting_prefix_sums'
RSpec.describe PrefixSums do
  let(:summer) { PrefixSums.new }
  it 'calculates all the prefix sums' do
    expect(summer.prefix_sums([1, 3, 2])).to eq([0, 1, 4, 6])
  end
end
