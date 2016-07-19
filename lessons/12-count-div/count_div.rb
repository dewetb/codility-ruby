require 'pry'
class CountDiv
  def solution(a, b, k)
    if a % k == 0
      bottom = a
    else
      bottom = a + (k - (a % k))
    end
    top = b - (b % k)
    ((top - bottom) / k) + 1
  end
end
