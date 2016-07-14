require 'pry'
class EqIndex
  def solution(a)
    sum = 0
    all_sums = a.map { |n| sum += n }

    0.upto(a.size - 1) do |i|
      if i == 0
	prefix_sum = 0
      else
        prefix_sum = all_sums[i - 1]
      end
      if i == a.size - 1
	suffix_sum = 0
      else
        suffix_sum = all_sums[-1] - all_sums[i]
      end
      if prefix_sum == suffix_sum
	return i
      end
    end
    -1
  end
end
