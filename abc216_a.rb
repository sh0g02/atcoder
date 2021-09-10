input = gets.chomp
y = input[-1].to_i

if y <= 2
  puts "#{input.to_i}-"
elsif y <= 6
  puts input.to_i.to_s
elsif y <= 9
  puts "#{input.to_i}+"
end
