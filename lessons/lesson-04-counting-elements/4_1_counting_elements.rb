require 'pry'
class ElementCounter

  def counting(a, m)
    n = a.length - 1
    count = [0] * (m + 1)
    0.upto(n) do |k|
      count[a[k]] += 1
    end
    count
  end

end
