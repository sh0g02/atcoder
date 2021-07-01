n = gets.to_i
p = (n * 1.08).to_i
if p < 206
  puts 'Yay!'
elsif p == 206
  puts 'so-so'
else
  puts ':( '
end
