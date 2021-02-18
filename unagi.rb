STDOUT
input_lines = gets.split(" ").map(&:to_i)
group = input_lines[1] #組数

chairs=Array.new(input_lines[0] , false) #席数 falseデフォ 


while(gets)
    input = $_.split(" ").map(&:to_i)
     cnt=input[0] #人数
     f_chair=input[1] - 1 #組毎の先頭が座る席番 インデックスのため-1


    if f_chair + cnt <= chairs.size then #座る席が0をまたぐか
           next if chairs[f_chair , cnt].any? #座ろうとした席が一つでも埋まっていれば退出してしまう   
           chairs[f_chair,cnt] = Array.new(cnt , true)

    else    #またぐ
            sippo = (f_chair+cnt)%chairs.size

            next if chairs[0 , sippo].any? || chairs[f_chair..-1].any?
            chairs[0 , sippo] = Array.new(sippo , true)
            chairs[f_chair..-1] = Array.new(cnt-sippo , true)

    end
end


puts chairs.grep(true).size