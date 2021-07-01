a = gets.split.map &:to_i
a.sort!
puts a[-1] + a[-2]
