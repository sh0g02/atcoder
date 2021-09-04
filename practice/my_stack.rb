# frozen_string_literal: true

# Last in First out
class MyStack
  # getter, setter
  attr_accessor :stack

  def initialize
    @top = 0
    @stack = Array.new(1000)
  end

  def empty?
    @top.zero?
  end

  def full?
    @top >= @stack.size - 1
  end

  # 計算量はO(1)
  def push(x)
    raise 'overflow' if full?

    @top += 1
    @stack[@top] = x
  end

  # 計算量はO(1)
  def pop
    raise 'underflow' if empty?

    @top -= 1
    @stack[@top + 1]
  end
end

my_stack = MyStack.new
input = gets.chomp.split

input.each do |s|
  case s
  when '+'
    a = my_stack.pop
    b = my_stack.pop
    my_stack.push(a + b)
  when '-'
    b = my_stack.pop
    a = my_stack.pop
    my_stack.push(a - b)
  when '*'
    a = my_stack.pop
    b = my_stack.pop
    my_stack.push(a * b)
  when '/'
    a = my_stack.pop
    b = my_stack.pop
    my_stack.push(a / b)
  else
    my_stack.push(s.to_i)
  end
end

puts my_stack.pop
