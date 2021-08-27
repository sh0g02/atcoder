i = gets.chomp.split.map(&:to_i)
max = -2000000000
min = i[0]

i.each do |_i|
  # これまでの最も低い位置と、現在位置の比較、それがこれまでの最大値よりも大きければそれを更新
  max = [max, _i - min].max
  # ここまでの最小値を保持
  min = [min, _i].min
end

puts max
