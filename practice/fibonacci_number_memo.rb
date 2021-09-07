# frozen_string_literal: true

# memo
def fibonacci(n)
  return $f[n] = 1 if [0, 1].include?(n)

  return $f[n] unless $f[n].nil?

  $f[n] = fibonacci(n - 2) + fibonacci(n - 1)
  $f[n]
end

n = gets.to_i
$f = {}
puts fibonacci(n)
