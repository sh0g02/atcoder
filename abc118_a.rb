a, b = gets.split.map(&:to_i)
(b % a).zero? ? puts(a + b) : puts(b - a)