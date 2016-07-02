require 'pry'
class TapeEquilibrium
  def solution(a)
    head = a[0]
    tail = a[1..-1].inject(&:+)
    min_dif = (head - tail).abs

    1.upto(a.size - 1) do |index|
      head += a[index]
      tail -= a[index]
      if (head-tail).abs < min_dif
        min_dif = (head-tail).abs
      end
    end
    min_dif
  end
end
