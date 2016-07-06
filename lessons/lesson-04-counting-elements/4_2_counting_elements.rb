class Equalizer
  def slow_solution(a, b, m)
    n = a.size
    sum_a = a.inject(:+)
    sum_b = b.inject(:+)
    a.each do |i|
      b.each do |j|
	change = j - i
	sum_a += change
	sum_b -= change
	if sum_a == sum_b
	  return true
	end
	sum_a -= change
	sum_b += change
      end
    end
    false
  end
end
