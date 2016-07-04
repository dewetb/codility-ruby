require 'rspec'
require_relative '4_1_counting_elements.rb'

describe ElementCounter do
  let(:counter) { ElementCounter.new }

  it 'counts elements in a collection' do
    expect(counter.counting([1, 2, 3, 3, 3, 4], 4)).to eq([0, 1, 1, 3, 1])
    expect(counter.counting([1], 1)).to eq([0, 1])
    expect(counter.counting([0], 0)).to eq([1])
  end
end
