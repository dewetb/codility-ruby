require 'pry'
# I tried this one many times and never got the perf right
# So I went and looked online and found this solution
# https://codesays.com/2014/solution-to-min-avg-two-slice-by-codility/
class MinSlice
  def solution(a)
    min_avg_value = (a[0] + a[1])/2.0   # The mininal average
    min_avg_pos = 0   # The start position of the first slice

    0.upto(a.length - 3) do |index|
      # Try the next 2-element slice
      if (a[index] + a[index+1]) / 2.0 < min_avg_value
	min_avg_value = (a[index] + a[index+1]) / 2.0
        min_avg_pos = index
      end
      # Try the next 3-element slice
      if (a[index] + a[index+1] + a[index+2]) / 3.0 < min_avg_value
        min_avg_value = (a[index] + a[index+1] + a[index+2]) / 3.0
        min_avg_pos = index
      end
    end

    # Try the last 2-element slice
    if (a[-1]+a[-2])/2.0 < min_avg_value
        min_avg_value = (a[-1]+a[-2])/2.0
	min_avg_pos = a.length-2
    end

    return min_avg_pos
  end
end
