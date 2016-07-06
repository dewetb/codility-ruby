require 'pry'
class FrogRiver
  def solution(a, x)
    target = (1..x).to_a
    b = []
    i = 0
    until b == target || i > (a.size - 1)
      b = a[0..i].uniq.sort
      i += 1
    end
    if b == target
      i - 1
    else
      -1
    end
  end
end
