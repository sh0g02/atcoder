def insertion_sort(array)
  (1..array.size - 1).each do |i|
    p array
    # 未ソートの部分の先頭から要素を取得して記録
    v = array[i]
    j = i - 1
    while j >= 0 && array[j] > v
      # ソート済の部分において、vより大きい要素を後方へ1個移動
      array[j + 1] = array[j]
      j -= 1
    end
    # 空いた部分にvを挿入
    array[j + 1] = v
  end
end

array = gets.chomp.split.map(&:to_i)
p insertion_sort(array)
