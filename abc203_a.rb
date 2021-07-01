a, b, c = gets.split.map &:to_i

if a == b
  p c
elsif b == c
  p a
elsif a == c
  p b
else
  p 0
end
