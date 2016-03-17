#Omega 2013
require 'pry'

module FallingDisks
  def self.solution(a, b)
    b.each_with_index do |disk, di|
      if a.size == 0 || disk > a[0]
        @ret =  di
        break
      else
        @ret =  di + 1
      end
      a.each_with_index do |ring, r_i|
      # binding.pry
        if disk > ring
          a.pop(a.size - (r_i - 1))
          break
        elsif a.size == r_i + 1
          a.pop
          break
        end
      end
    end
    @ret
  end
end

=begin
"take each disk one at a time"
  "if the disk array is empty, return the disk index & break"
  "else prepare to return the disk index + 1"
  "try the disk in each ring"
    "if the disk doesn't fit into a ring, pop from the previous ring to the end & break"
    "if you are at the end of the array, pop & break"
=end