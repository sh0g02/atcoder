# 最も単純なフィボナッチ数
def fibonnacci(n)
  return 1 if [0, 1].include?(n)
  fibonnacci(n - 2) + fibonnacci(n - 1)
end

n = gets.to_i
puts fibonnacci(n)
