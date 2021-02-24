input_line = gets.to_i
input_word = gets.chomp
array = Array.new
a = 0
while(gets)
    if $_.include?(input_word)
    array << $_
    end
    a +=1
    if a == input_line && array[0] == nil
        array = "None"
    end
end
puts array