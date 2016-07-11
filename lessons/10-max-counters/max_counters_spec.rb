require_relative 'max_counters'
describe MaxCounters do
  it "returns an array of counters" do
    max = MaxCounters.new

    expect(max.solution(5, [3, 4, 4, 6, 1, 4, 4])).to eq([3, 2, 2, 4, 2])
    expect(max.solution(4, [3, 4, 4, 5, 1, 4])).to eq([3, 2, 2, 3])
  end

end
