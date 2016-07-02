require 'pry'
class PermMissingElem
  def solution(a)
    a = a.sort
    if a[-1] == a.size
      return a[-1] + 1
    else
      1.upto(a.size - 1) do |i|
	if a[i] == (a[i - 1]) + 2
	  return a[i] - 1
	end
      end
    end
  end
end
