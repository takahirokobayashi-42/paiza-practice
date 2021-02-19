# 自分の得意な言語で
# Let's チャレンジ！！
input_line = gets.chomp
boin = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
boin.each do |b|
    input_line=input_line.delete(b)
end
puts input_line

# または

input_line = gets.chomp
boin = ["a", "e", "i", "o", "u",]
input_line = input_line.gsub(/#{boin}/i,"")
puts input_line