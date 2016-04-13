require 'pry'
# Find the smallest difference that can be achieved
# Check the middle of the array, then check one higher
# If the higher is smaller, bisect the second half of the array & try again
# If the higher is not smaller, bisect the fist half of the array
#
# If there are only 2 elements in the array
# check the difference at index 0
# then check the difference at index 1

class TapeEquilibrium
  def solution(a)
    lower = 0
    upper = a.size - 1
    loop do
      guess_index = (lower + upper) / 2
      @guess_difference = difference(a, guess_index)
      if @guess_difference > difference(a, guess_index + 1)
	lower = guess_index + 1
      elsif @guess_difference > difference(a, guess_index - 1)
	upper = guess_index
      else
	break
      end
    end
    @guess_difference
  end

  def difference(a, i)
    if i == 0
      a.inject(&:+)
    else
      (sum(a[0..(i-1)]) - sum(a[i..-1])).abs
    end
  end

  def sum(a)
    a.inject(&:+).to_i
  end
end

