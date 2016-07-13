require 'pry'
class PrefixSums
  def prefix_sums(a)
    n = a.size
    p = [0] * (n)
    1.upto(n) do |k|
      p[k] = p[k - 1] + a[k - 1]
    end
    p
  end
end
