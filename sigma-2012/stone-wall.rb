require 'pry'
# Every time the wall gets taller, it needs a new block.
# If the wall gets shorter
#   dropping to a previous level that it has not been lower than, a new block is not created
#   Else, a new block is created
H = [8, 8, 5, 7, 9, 8, 7, 4, 8]
blocks = 0
H.each_with_index do |height, index|
  if H[index - 1] < height || index == 0
    blocks += 1
  elsif H[index - 1] > height
    last_occuring_index = H.slice(0..(index - 1)).rindex(height)
    if last_occuring_index
      if H.slice(last_occuring_index..(index - 1)).min >= height
        blocks += 0
      else
        blocks += 1
      end
    else
      blocks += 1
    end
  end
end

puts blocks
