# frozen_string_literal: true

def get_b(n)
  return (3**-1).to_f if n.zero?

  Math.sqrt(get_a(n) * get_b(n - 1))
end

def get_a(n)
  return (2 * Math.sqrt(3))**-1.to_f if n.zero?

  (get_a(n - 1) + get_b(n - 1)) * (2**-1).to_f
end

puts get_a(10)**-1
