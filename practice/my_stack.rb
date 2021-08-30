# 一時的にデータを対比したいときに有利なデータ構造
class MyStack
  def initialize
    @top = 0
    @stack = []
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
