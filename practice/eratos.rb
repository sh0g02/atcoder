# frozen_string_literal: true

def root_prime?(x)
  return true if x == 2

  return false if x < 2 || x.even?

  3.step(Integer.sqrt(x), 2).each do |_x|
    return false if (x % _x).zero?
  end

  true
end

def eratos(i)
  is_prime = []
  (0..i).to_a.each do |_i|
    is_prime[_i] = true
  end

  # 0と1を除外
  is_prime[0] = is_prime[1] = false

  # _iを残して、_iの倍数を消す
  (2...Integer.sqrt(i)).each do |_i|
    next unless root_prime?(_i)

    j = _i * 2
    j.step(i, _i).each do |_j|
      is_prime[_j] = false
    end
  end

  result = is_prime.map.with_index do |v, i|
    i if v
  end

  puts result.compact
end

require 'benchmark'

i = gets.to_i
eratos(i)
