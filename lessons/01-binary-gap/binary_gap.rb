# Binary Gap
# https://codility.com/programmers/task/binary_gap/

# A binary gap is the largest consecutive number of 0's with 1's on either side
#
# Zero the counter at the first 1
#

def solution(n)
  binary = n.to_s(2)
  binary_gap = 0
  counter = 0
  1.upto(binary.length) do |index|
    if binary[index] == '0' && binary[index - 1] == '1'
      counter = 1
    elsif binary[index] == '0' && counter > 0
      counter += 1
    elsif binary[index] == '1' && counter
      binary_gap = counter if counter > binary_gap
      counter = 0
    end
  end
  binary_gap
end

puts solution(1041)
