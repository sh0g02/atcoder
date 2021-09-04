# frozen_string_literal: true

# First in First out
class RoundRobin
  def initialize
    @head = 0
    @tail = 0
    @max  = 7
    @queue = Array.new(@max)
  end

  def empty?
    @head == @tail
  end

  def full?
    @head == (@tail + 1) % @max
  end

  def enqueue(x)
    raise 'overflow' if full?

    @queue[@tail] = x
    if @tail + 1 == @max
      @tail = 0
    else
      @tail += 1
    end
  end

  def dequeue
    raise 'underflow' if empty?

    x = @queue[@head]
    if @head + 1 == @max
      @head = 0
    else
      @head += 1
    end
    x
  end
end
