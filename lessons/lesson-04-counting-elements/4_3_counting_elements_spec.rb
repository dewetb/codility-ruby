require_relative '4_3_counting_elements'

describe Equalizer do
  let(:counter) { Equalizer.new }

  it 'returns true if an equalizing swap can be performed' do
    expect(counter.fast_solution(
      [1, 2, 3, 4],
      [2, 3, 4, 5],
      4
    )).to eq(true)
  end

  it 'returns false if an equalizing swap can not be performed' do
    expect(counter.fast_solution(
      [1, 2, 3, 4],
      [20, 30, 40, 50],
      100
    )).to eq(false)
  end
end
