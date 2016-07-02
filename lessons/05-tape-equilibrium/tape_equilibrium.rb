require 'pry'
class TapeEquilibrium
  def solution(a)
    head = a[0]
    tail = a[1..-1].inject(&:+)
    min_diff = (head - tail).abs

    1.upto(a.size - 1) do |i|
      head += a[i]
      tail -= a[i]

      if (head - tail).abs < min_diff
	min_diff = (head - tail).abs
      end
    end
    min_diff
  end
end
