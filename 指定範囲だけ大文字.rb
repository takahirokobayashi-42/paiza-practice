
# 自分の答え
input_line = gets.split(" ").map(&:to_i).map{|item| item - 1}
input_word = gets.chomp.split("")
sentence = input_word[input_line[0]..input_line[1]].map(&:upcase).join
input_word = input_word.join.gsub(/#{sentence}/i,"#{sentence}")
puts input_word

# 模範解答
nums = gets.chomp.split(' ')
str = gets.chomp

(1..(str.size)).each do |i|
  if nums[0].to_i <= i && i <= nums[1].to_i
    print str[i - 1].upcase
  else
    print str[i - 1]
  end
end

print "\n"