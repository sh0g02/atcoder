# メモ化再帰
def fibonnacci(n)
  return $f[n] = 1 if [0, 1].include?(n)

  return $f[n] unless $f[n].nil?

  $f[n] = fibonnacci(n - 2) + fibonnacci(n - 1)
  $f[n]
end

n = gets.to_i
$f = {}
puts fibonnacci(n)
