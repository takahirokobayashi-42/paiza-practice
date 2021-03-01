a = 0
num=1
while(num<=5000)
  if num%3==0
    a += num
  elsif num.to_s.include?("3")
    a += num.to_i
  end
  num +=1
end
puts a