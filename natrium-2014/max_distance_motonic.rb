#natrium 2014
#this solution gets 100% for correctness but 0% for performance. Make that CPU sweat!

def solution(a)
  @ret = 0
  a.each_with_index do |n, i|
    i.upto(a.size - 1).each do |c_i|
      if n <= a[c_i]
        @ret = (c_i - i) if (c_i - i) > @ret
      end
    end
  end
  @ret
end