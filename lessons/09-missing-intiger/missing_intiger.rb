class MissingIntiger
  def solution(a)
    a = a.sort
    guess = 1

    a.each do |n|
      if n > guess
	return guess
      end
      if n == guess
	guess = n + 1
      end
    end
    guess
  end
end
