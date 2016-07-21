require_relative "min_slice"

RSpec.describe MinSlice do
  let(:min_slice) { MinSlice.new }

  it "returns the starting index of the minimum average slice" do
    expect(min_slice.solution([4, 2, 2, 5, 1, 5, 8])).to eq(1)
    expect(min_slice.solution([4, 8, 2, -5, 1, 5, 8])).to eq(3)
    expect(min_slice.solution([-3, -5, -8, -4, -10])).to eq(2)
  end
end
