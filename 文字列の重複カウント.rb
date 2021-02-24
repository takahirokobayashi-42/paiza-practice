pattern = gets.chomp
string = gets.chomp

# 解答を格納する変数 ans を置き、0 で初期化します。
# 開始地点を先頭から順にずらしながら、t を s と同じ長さだけ切り取り、s と一致するかどうかを確認します。一致した場合は ans に 1 を加算します。
# t の長さが len(t) 、s の長さが len(s) の時、t を s と同じ長さだけ切り取れるのは、切り取る範囲の先頭が 0 文字目から len(t) - len(s) 文字目の時のみであることに注意してください。
# 最終的な ans を出力すれば OK です。

result = 0
(0..(string.size - pattern.size)).each do |i|
  substring = string.slice(i, pattern.size) #(i←左から何番目の要素　pattern.size←何個sliceするか) 引数を2つにするとrange検索する
  result += 1 if substring == pattern
end

puts result