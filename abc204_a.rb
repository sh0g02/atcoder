h = [0, 1, 2]
a = gets.split.map &:to_i

if a[0] != a[1]
  r = h - a
else
  r = a[1]
end

puts r