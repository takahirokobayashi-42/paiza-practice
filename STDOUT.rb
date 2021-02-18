print "Please input your name: "
STDOUT.flush

# chompは文字列末尾の\nを取り除く
name = gets.to_s.chomp

# 入力した値を使用してメッセージを出力
puts "Hello #{name}!"