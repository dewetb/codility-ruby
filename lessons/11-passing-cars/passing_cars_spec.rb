require_relative 'passing_cars'
RSpec.describe PassingCars do
  it 'counts passing cars' do
    counter = PassingCars.new
    oversize_array = [0, 1] * 100000

    expect(counter.solution([0, 1, 0, 1, 1])).to eq(5)
    expect(counter.solution([0, 1, 0, 0, 1])).to eq(4)
    expect(counter.solution(oversize_array)).to eq(-1)

  end
end
