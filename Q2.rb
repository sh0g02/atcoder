n = gets.to_i
a = [1, 2, 3]
pattern = []

(1..n).each do |_n|
  pattern += a.repeated_permutation(_n).to_a
end

p pattern

result = pattern.map do |_array|
  _array if _array.sum == n
end

p result.compact.size
