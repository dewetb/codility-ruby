# https://codility.com/programmers/task/odd_occurrences_in_array/
# loop do
# if the first two
a = [9, 3, 9, 3, 9, 7, 9]


def solution(a)
  a = a.sort
  loop do
    @compare = a.pop(2)
    if @compare == @compare.uniq
      break
    end
  end
  @compare[-1]
end

puts solution(a)
