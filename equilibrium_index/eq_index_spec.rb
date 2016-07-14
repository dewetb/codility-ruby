require_relative 'eq_index'

RSpec.describe EqIndex do
  it 'returns the equilibrium index' do
    equilidator = EqIndex.new
    expect(equilidator.solution([-1, 3, -4, 5, 1, -6, 2, 1])).to eq(1)
    expect(equilidator.solution([-1, 3, -4, 5, 1, -6, 2, 100])).to eq(7)
    expect(equilidator.solution([1, 3, 4, 5, 1, 6, 2, 100])).to eq(-1)
  end
end
