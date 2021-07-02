n = gets.to_i

if (n % 100).zero?
  puts n / 100
else
  puts n / 100 + 1
end
