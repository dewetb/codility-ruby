require 'pry'
class PassingCars
  def solution(a)
    prefix_sum = [0] * (a.length + 1)
    0.upto(a.size - 1) do |i|
      prefix_sum[i + 1] += (a[i] + prefix_sum[i])
    end

    pass_count = 0
    a.each_with_index do |car, index|
      if car == 0
	pass_count += (prefix_sum[-1] - prefix_sum[index + 1])
	return -1 if pass_count > 1000000000
      end
    end
    pass_count
  end
end
