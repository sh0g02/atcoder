# frozen_string_literal: true

require 'benchmark'
i = gets.to_i

def prime?(x)
  return false if x <= 1

  2.upto(x - 1).each do |i|
    return false if (x % i).zero?
  end

  true
end

def root_prime?(x)
  return true if x == 2

  return false if x < 2 || x.even?

  3.step(Integer.sqrt(x), 2).each do |_x|
    return false if (x % _x).zero?
  end

  true
end

def simple_prime(i)
  (2...i).each do |_i|
    puts _i if prime?(_i)
  end
end

result = Benchmark.realtime do
  simple_prime(i)
end

puts "処理時間: #{result}秒"
