n = gets
x = gets.split.map(&:to_i).map(&:abs)

puts x.sum
puts Math.sqrt(x.map { |_x| _x**2 }.sum)
puts x.max
