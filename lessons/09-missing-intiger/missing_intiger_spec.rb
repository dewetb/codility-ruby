require_relative 'missing_intiger'
describe MissingIntiger do
  let(:missing_intiger) { MissingIntiger.new }

  it 'returns the smallest positive missing intiger' do
    expect(missing_intiger.solution([1, 3, 6, 4, 1, 2])).to eq(5)
    expect(missing_intiger.solution([1, 3, 6, 4, 1, 1])).to eq(2)
    expect(missing_intiger.solution([5, 3, 7, 4, 1, 2])).to eq(6)
    expect(missing_intiger.solution([5, 3, 7, 4, 8, 2])).to eq(1)
    expect(missing_intiger.solution([5, 3, 7, 4, 0, 2])).to eq(1)
    expect(missing_intiger.solution([5, 3, 7])).to eq(1)
    expect(missing_intiger.solution([0])).to eq(1)
    expect(missing_intiger.solution([1])).to eq(2)
    expect(missing_intiger.solution([-4])).to eq(1)
    expect(missing_intiger.solution([-8])).to eq(1)
    expect(missing_intiger.solution([-8, 1, 3])).to eq(2)
    expect(missing_intiger.solution([-8, 8])).to eq(1)
    expect(missing_intiger.solution([-8, 0, 8])).to eq(1)
    expect(missing_intiger.solution([4, 5, 6, 2])).to eq(1)
    expect(missing_intiger.solution([-1])).to eq(1)
  end

end

