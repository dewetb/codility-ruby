require_relative 'falling_disks'

describe FallingDisks do
  it 'calculates how many disks can fit in a well with rings' do
    expect(FallingDisks.solution([1], [1])).to eq(1)
    expect(FallingDisks.solution([5, 6, 4, 3, 6, 2, 3], [2, 3, 5, 2, 4])).to eq(4)
    expect(FallingDisks.solution([5, 6, 4, 3, 6, 2, 3], [5, 3, 5, 2, 4])).to eq(2)
    expect(FallingDisks.solution([5, 6, 4, 3, 6, 2], [2, 2, 2, 2, 2, 2])).to eq(6)
  end

  it 'still works if there are more disks than rings' do
    expect(FallingDisks.solution([5, 6, 4, 3, 6, 2], [2, 2, 2, 2, 2, 2, 3, 4, 5])).to eq(6)
  end

  it 'returns 1 if only one disk is dropped in & goes in to any length' do
    expect(FallingDisks.solution([5, 6, 4, 3, 6, 2, 3], [2])).to eq(1)
    expect(FallingDisks.solution([5, 6, 4, 3, 6, 2, 3], [4])).to eq(1)
  end

  it 'returns 1 if the first disk falls only into the first ring' do
    expect(FallingDisks.solution([5, 1, 4, 3, 6, 2, 3], [2, 3, 5, 2, 4])).to eq(1)
  end

  it 'returns 0 if the first disk does not fit into the first ring' do
    expect(FallingDisks.solution([1, 1, 4, 3, 6, 2, 3], [2, 3, 5, 2, 4])).to eq(0)
  end
end