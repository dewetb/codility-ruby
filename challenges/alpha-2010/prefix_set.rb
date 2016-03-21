#Alpha 2010

module PrefixSet

  def self.prefix_set(a)
    @ret = 0
    a.each_with_index do |n, i|
      @ret = i unless a.slice(0..(i-1)).include?(n)
    end
    @ret
  end
end
