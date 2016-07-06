require 'pry'
class Equalizer
  def fast_solution(a, b, m)
    a_sum = a.inject(:+)
    b_sum = b.inject(:+)
    diff = (a_sum - b_sum).abs
    if diff % 2 == 1
      return false
    end
    target = diff / 2
    if a.include?(target)
      return true
    end
    false
  end
end
