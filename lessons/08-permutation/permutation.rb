require 'pry'
class Permutation
  def solution(a)
    boolean = (a.uniq == a && a.min == 1 && a.max == a.size)
    if boolean
      1
    else
      0
    end
  end
end
