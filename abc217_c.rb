n = gets.to_i
p = gets.chomp.split.map(&:to_i)
result = Array.new(n)

n.times do |i|
  result[p[i] - 1] = i + 1
end

puts result
