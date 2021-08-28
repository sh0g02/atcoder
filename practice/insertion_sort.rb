def insertion_sort(array)
  (1..array.size - 1).each do |i|
    p array
    v = array[i]
    j = i - 1
    while j >= 0 && array[j] > v
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = v
  end
end

array = gets.chomp.split.map(&:to_i)
p insertion_sort(array)
