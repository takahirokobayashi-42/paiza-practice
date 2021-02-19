input_line = gets.split(" ").map(&:to_i)
ans= "Yes"
input_line.each do |b|
    a = 2
    while a <= (b-1)
        if b % a == 0 
            ans = "No"
        end
        a += 1
    end
end
puts ans