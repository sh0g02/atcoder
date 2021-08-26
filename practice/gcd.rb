def gcd(x, y)
  n = [x, y].min
  n&.downto(1) do |d|
    return d if (x % d).zero? && (y % d).zero?
  end
end

x = gets.to_i
y = gets.to_i
puts gcd(x, y)
