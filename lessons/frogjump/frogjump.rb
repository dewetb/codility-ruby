# https://codility.com/programmers/task/frog_jmp/

def solution(x, y, d)
  ((y - x) / d.to_f).ceil
end

puts "#{solution(10, 85, 30)} should be 3"
puts "#{solution(10, 85, 30)} should be 3"
puts "#{solution(1, 11, 30)} should be 1"
puts "#{solution(1, 11, 3)} should be 4"
puts "#{solution(1, 11, 5)} should be 2"
