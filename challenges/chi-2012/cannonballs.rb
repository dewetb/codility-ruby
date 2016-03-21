# Cannon Balls
# Codility Chi 2012
# https://codility.com/programmers/task/cannonballs/

# Assume that a cannonball is shot at level H.

# If the cannonball height is lower than a[0] nothing happens

# If the cannonball hits something, the thing before it gets incremented by 1
# If the cannonball is shot higher than the highest piece of land, nothing happens

#land
a = [1, 2, 0, 4, 3, 2, 1, 5, 7]

#balls
b = [2, 8, 0, 7, 6, 5, 3, 4, 5, 6, 5]

a1 = [2, 2, 2, 4, 3, 3, 5, 6, 7]

b.each do |ball_height|
  if ball_height > a[0]
    1.upto(a.length - 1) do |land_index|
      if a[land_index] >= ball_height
	a[land_index - 1] += 1
	break
      end
    end
  end
end
p a
