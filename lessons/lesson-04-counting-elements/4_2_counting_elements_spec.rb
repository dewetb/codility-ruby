require_relative '4_2_counting_elements'

describe Equalizer do
  let(:counter) { Equalizer.new }

  it 'determines if an equalizing swap can be performed' do
    expect(counter.slow_solution(
      [1, 2, 3, 4],
      [2, 3, 4, 5],
      4
    )).to eq(true)
    expect(counter.slow_solution(
      [1, 2, 3, 4],
      [20, 30, 40, 50],
      100
    )).to eq(false)
  end
end
