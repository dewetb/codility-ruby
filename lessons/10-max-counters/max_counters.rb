require 'pry'
class MaxCounters
  def solution(n, a)
    result = [0] * n
    a.each do |i|
      if i == n + 1
	max = result.max
	result = [max] * n
      else
	result[i - 1] += 1
      end
    end
    result
  end
end
