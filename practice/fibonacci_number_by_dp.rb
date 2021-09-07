# frozen_string_literal: true

# dp
def make_fibonacci(n)
  result = {}
  result[0] = 1
  result[1] = 1
  (2..n).each do |_n|
    # _nを計算する場合には、既に2個前まで計算済
    result[_n] = result[_n - 2] + result[_n - 1]
  end
  result[n]
end

n = gets.to_i
puts make_fibonacci(n)
