require_relative 'perm_missing_elem'

describe PermMissingElem do
  let(:finder) { PermMissingElem.new }

  it 'finds the missing element in an array' do
    expect(finder.solution([2, 4, 1, 5])).to eq(3)
    expect(finder.solution([1, 2, 3, 5])).to eq(4)
    expect(finder.solution([2, 4, 3, 5])).to eq(1)
    expect(finder.solution([2])).to eq(1)
    expect(finder.solution([1])).to eq(2)
    expect(finder.solution([1, 2])).to eq(3)
  end

end
