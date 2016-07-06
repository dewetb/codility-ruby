require_relative 'frog_river'

describe FrogRiver do
  let (:frog_river) { FrogRiver.new }

  it 'tells how many seconds before the frog can jump' do
    expect(frog_river.solution([1, 3, 1, 4, 2, 3, 5, 4], 5)).to eq(6)
  end

  it 'returns -1 if frog can never jump' do
    expect(frog_river.solution([1, 3, 1, 4, 2, 3, 2, 4], 5)).to eq(-1)
  end
end
