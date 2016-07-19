require_relative 'count_div'

RSpec.describe CountDiv do
  counter = CountDiv.new
  it 'counts how many numbers divisible by k' do
    expect(counter.solution(6, 11, 2)).to eq(3)
    expect(counter.solution(1, 10, 2)).to eq(5)
    expect(counter.solution(10, 10, 2)).to eq(1)
    expect(counter.solution(1, 1, 2)).to eq(0)
    expect(counter.solution(1, 6, 3)).to eq(2)
    expect(counter.solution(11, 39, 17)).to eq(2)
    expect(counter.solution(11, 345, 17)).to eq(20)
  end
end
