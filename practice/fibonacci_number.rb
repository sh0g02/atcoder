# frozen_string_literal: true

def fibonacci(n)
  return 1 if [0, 1].include?(n)

  fibonacci(n - 2) + fibonacci(n - 1)
end

n = gets.to_i
puts fibonacci(n)
