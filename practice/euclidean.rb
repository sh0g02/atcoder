def gcd(x, y)
  # x >= y となる様に値を交換
  x = [x, y].max
  y = [x, y].min

  while y > 0
    # yが0になるまで
    r = x % y
    x = y
    y = r
  end

  x
end

x = gets.to_i
y = gets.to_i
puts gcd(x, y)
